from .views import *
from django.urls import path

urlpatterns = [

    path('', index, name='api-index'),
    path('students/', all_students, name='api-all_students'),
    path('students/get', student_details, name='api-student_details'),
    path('programs/', programs_list, name='api-program_list'),
    path('programs/<str:program_name>/', program_details, name='api-program_details')
]
