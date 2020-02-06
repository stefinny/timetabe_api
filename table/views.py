import json
import os
import time

from django.shortcuts import get_object_or_404
from django.utils.datastructures import MultiValueDictKeyError
from rest_framework import status
from rest_framework.response import Response
from rest_framework.views import APIView

from .serializers import *


# Create your views here.
class StudentList(APIView):
    """
    Class gets list of all students registered. Results contain some details about the students
    format: /api/students
    """
    def get(self, request):
        all_students = Students.objects.all()
        serialized = StudentsSerializer(all_students, many=True)
        return Response(data=serialized.data)


class StudentDetail(APIView):
    """
    Class for getting details of a student, one registered in our system
    format: /api/students/get?regnumber=[student_registration_number]
    @params:
        regnumber - registration number of the student you want to get their details
    @returns:
        returns details of the student.
        if registration number is not given, a KeyError is raised
        if registration number is not found in the system, a 404 not found error is returned
    """
    def get(self, request):
        try:
            student = get_object_or_404(Students, regnumber=request.GET['regnumber'])
            serialized = StudentsSerializer(student)
            return Response(serialized.data)
        except KeyError:
            return Response({'error': 'No registration number defined'}, status=status.HTTP_400_BAD_REQUEST)


class FacultiesList(APIView):
    """
    Class for getting list of all faculties in the university
    format: /api/faculties/
    """
    def get(self, request):
        all_faculties = Faculties.objects.all()
        serialized = FacultiesSerializer(all_faculties, many=True)
        return Response(serialized.data, status=status.HTTP_200_OK)


class DepartmentsList(APIView):
    """
    Class for getting list of all departments in the university[those already registered in our api]
    format: /api/departments/
    """
    def get(self, request):
        all_departments = Departments.objects.all()
        serialized = DepartmentsSerializer(all_departments, many=True)
        return Response(serialized.data, status=status.HTTP_200_OK)


class ProgramList(APIView):
    """
    The class gets a list of all programs registered in the university
    request_format: api/programs/
    """
    def get(self, request):
        all_programs = Programs.objects.all()
        serialized = ProgramsSerializer(all_programs, many=True)
        return Response(serialized.data, status=status.HTTP_200_OK)


# api/units?
class CourseDetailsList(APIView):
    """
    Class for getting details about a course. Here a course refers to name and year of study.
    example /api/units?course=[course_name]&year=[year_of_study]
    @params:
        course - name of course you want to get details for
        year - year of study for the course
    @returns:
        json response data containing name of course and units taken for the current semester for the year specified.
        a 404 not found error can be raised if the course has not been registered in the system yet
    """
    def get(self, request):
        try:
            course = Coursedetails.objects.filter(coursename=request.GET['course'], year=request.GET['year']).values()[0]
            units = []
            for unit in course['units'].split('.'):
                units.append(unit)
            data = {'id': course['id'], 'name': course['coursename_id'], 'year': course['year'], 'units': units}
            return Response(data)
        except IndexError:
            return Response({'Error': 'Not found'}, status=status.HTTP_404_NOT_FOUND)


# api/timetable?course=<>&year=<>
class Timetable(APIView):
    """
    This class is for getting timetable for a given course eg Computer science. The timetable is saved as json file
    in the generated timetables directory. The file name consist of course name and year of study
    example api/timetable?course=[course_name]]&year=[year_of_study]
    @params:
        course - name of the course you are searching for
        year - year of study for timetable you want to view
    @returns:
          if the file containing timetable is found, then the timetable is read and lessons are returned,
          if file is not found, a 404 error is raised.
    """
    def get(self, request):
        GENERATED_DIR = os.path.join(os.path.dirname(os.path.abspath(__file__)), 'GENERATED')

        try:
            file_path = os.path.join(GENERATED_DIR, request.GET['course'] + ' Year ' + request.GET['year'] + '.json')
            with open(file_path, 'r') as timetable_file:
                table = json.load(timetable_file)
                return Response(table, status=status.HTTP_302_FOUND)
        except FileNotFoundError:
            return Response({'Error': 'Timetable does not exist'}, status=status.HTTP_404_NOT_FOUND)
        except MultiValueDictKeyError:
            return Response({'Error': 'You did not provide enough parameters'}, status=status.HTTP_400_BAD_REQUEST)


def get_week_day():
    """
    Getting name of today using python time module. 0 for monday 6 for sunday
    """
    day = time.localtime()[6]
    if day == 0:
        return "monday"
    elif day == 1:
        return "tuesday"
    elif day == 2:
        return "wednesday"
    elif day == 3:
        return "thursday"
    elif day == 4:
        return "friday"
    elif day == 5:
        return "saturday"
    else:
        return "sunday"


# api/timetable/get?regnumber=<>&today=<True, False>
class StudentTimetable(APIView):
    """
    class for getting timetable for a given student (ie. program taken by student).
    example /api/timetable/get?regnumber=[authenticated_user_registration_number]&today=[True/False(or anything else)]
        @params:
            regnumber - Registration number of student requesting timetable
            today - can be take values 'True' or anything else
                'True' - filters result to get timetable for only today
                <anything else>- returns full timetable for whole week

        @returns: returns timetable either for one day or for whole week (depending of value of today param)
    """
    def get(self, request):
        reg_number = request.GET['regnumber']
        student = Students.objects.get(regnumber=reg_number)
        student_course = Coursedetails.objects.filter(id=student.courseid).values()[0]['coursename_id']
        GENERATED_DIR = os.path.join(os.path.dirname(os.path.abspath(__file__)), 'GENERATED')
        file_path = os.path.join(GENERATED_DIR, student_course + ' Year ' + str(student.year) + '.json')

        try:
            # Try to open json file containing timetable for course taken by student
            with open(file_path, 'r') as timetable_file:
                table = json.load(timetable_file)
                if request.GET['today'].lower() == 'true':
                    data = []
                    # checking if today is weekend (There is no timetable for weekend)
                    if get_week_day() == 'saturday' or get_week_day() == 'sunday':
                        data.append({'Warning': 'No timetable for ' + get_week_day()})
                    else:
                        for lesson in table:
                            # looking for lessons for today
                            if lesson['day'] == get_week_day():
                                data.append(lesson)
                    return Response(data, status=status.HTTP_200_OK)
                else:
                    return Response(table, status=status.HTTP_200_OK)
        except FileNotFoundError:
            return Response({'Error': 'Timetable does not exist'}, status=status.HTTP_404_NOT_FOUND)
