from rest_framework import serializers
from .models import *


class FacultiesSerializer(serializers.ModelSerializer):
    class Meta:
        model = Faculties
        fields = '__all__'


class DepartmentsSerializer(serializers.ModelSerializer):
    class Meta:
        model = Departments
        fields = '__all__'


class CoursedetailSerializer(serializers.ModelSerializer):
    class Meta:
        model = Coursedetails
        fields = '__all__'


class ProgramsSerializer(serializers.ModelSerializer):

    class Meta:
        model = Programs
        fields = '__all__'


class StudentsSerializer(serializers.ModelSerializer):

    class Meta:
        model = Students
        fields = '__all__'

