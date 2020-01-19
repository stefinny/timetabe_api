"""timetabe_api URL Configuration

The `urlpatterns` list routes URLs to views. For more information please see:
    https://docs.djangoproject.com/en/3.0/topics/http/urls/
Examples:
Function views
    1. Add an import:  from my_app import views
    2. Add a URL to urlpatterns:  path('', views.home, name='home')
Class-based views
    1. Add an import:  from other_app.views import Home
    2. Add a URL to urlpatterns:  path('', Home.as_view(), name='home')
Including another URLconf
    1. Import the include() function: from django.urls import include, path
    2. Add a URL to urlpatterns:  path('blog/', include('blog.urls'))
"""
from django.contrib import admin
from django.urls import path
from rest_framework.urlpatterns import format_suffix_patterns
from table.views import *

urlpatterns = [
    path('admin/', admin.site.urls),
    path('api/students', StudentList.as_view()),
    path('api/students/get', StudentDetail.as_view()),
    path('api/faculties', FacultiesList.as_view()),
    path('api/departments', DepartmentsList.as_view()),
    path('api/programs', ProgramList.as_view()),
    path('api/units', CourseDetailsList.as_view()),
    path('api/timetable', Timetable.as_view()),
    path('api/timetable/get', StudentTimetable.as_view())
]

urlpatterns = format_suffix_patterns(urlpatterns)
