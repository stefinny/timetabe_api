from django.shortcuts import render, get_object_or_404
from rest_framework.views import APIView
from rest_framework.response import Response
from .models import *
from .serializers import *
from rest_framework import status
import os
import json
import time


# Create your views here.
class StudentList(APIView):

    def get(self, request):
        all_students = Students.objects.all()
        serialized = StudentsSerializer(all_students, many=True)
        return Response(data=serialized.data)


class StudentDetail(APIView):

    def get(self, request):
        try:
            student = get_object_or_404(Students, regnumber=request.GET['regnumber'])
            serialized = StudentsSerializer(student)
            return Response(serialized.data)
        except KeyError:
            return Response({'error': 'No registration number defined'})


class FacultiesList(APIView):

    def get(self, request):
        all_faculties = Faculties.objects.all()
        serialized = FacultiesSerializer(all_faculties, many=True)
        return Response(serialized.data, status=status.HTTP_200_OK)


class DepartmentsList(APIView):
    def get(self, request):
        all_departments = Departments.objects.all()
        serialized = DepartmentsSerializer(all_departments, many=True)
        return Response(serialized.data, status=status.HTTP_200_OK)


class ProgramList(APIView):
    def get(self, request):
        all_programs = Programs.objects.all()
        serialized = ProgramsSerializer(all_programs, many=True)
        return Response(serialized.data, status=status.HTTP_200_OK)


class CourseDetailsList(APIView):

    def get(self, request):
        try:
            course = Coursedetails.objects.filter(coursename=request.GET['coursename'], year=request.GET['year']).values()[0]
            units = []
            for unit in course['units'].split('.'):
                units.append(unit)
            data = {'id': course['id'], 'name': course['coursename_id'], 'year': course['year'], 'units': units}
            return Response(data)
        except:
            return Response({'Error': 'Not found'}, status=status.HTTP_404_NOT_FOUND)


class Timetable(APIView):

    def get(self, request):
        GENERATED_DIR = os.path.join(os.path.dirname(os.path.abspath(__file__)), 'GENERATED')
        file_path = os.path.join(GENERATED_DIR, request.GET['course'] + ' Year ' + request.GET['year'] + '.json')
        try:
            with open(file_path, 'r') as timetable_file:
                table = json.load(timetable_file)
                return Response(table, status=status.HTTP_302_FOUND)
        except FileNotFoundError:
            return Response({'Error': 'Timetable does not exist'}, status=status.HTTP_404_NOT_FOUND)


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


class StudentTimetable(APIView):
    """
    class for getting timetable for a given student (ie. program taken by student).
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
                if request.GET['today'] == 'True':
                    data = []
                    # checking if today is weekend (There is no timetable for weekend)
                    if get_week_day() == 'saturday' or get_week_day() == 'sunday':
                        data.append({'Warning': 'No timetable for ' + get_week_day()})
                    else:
                        for lesson in table:
                            # looking for lessons for today
                            if lesson['day'] == get_week_day():
                                data.append(lesson)
                    return Response(data, status=status.HTTP_302_FOUND)
                else:
                    return Response(table, status=status.HTTP_302_FOUND)
        except FileNotFoundError:
            return Response({'Error': 'Timetable does not exist'}, status=status.HTTP_404_NOT_FOUND)