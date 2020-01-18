from django.shortcuts import render, get_object_or_404
from rest_framework.views import APIView
from rest_framework.response import Response
from .models import *
from .serializers import *
from rest_framework import status


# Create your views here.
class StudentList(APIView):

    def get(self, request):
        print(request.GET['regnumber'])
        all_students = Students.objects.all()
        serialized = StudentsSerializer(all_students, many=True)
        return Response(data=serialized.data)


class StudentDetail(APIView):

    def get(self, request):
        student = get_object_or_404(Students, regnumber=request.GET['regnumber'])
        serialized = StudentsSerializer(student)
        return Response(serialized.data)


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
