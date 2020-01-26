from django.shortcuts import render, HttpResponse
from table.models import Students, Programs


# Create your views here.
def index(request):
    print(request.user)
    studentscount = Students.objects.count()
    programscount = Programs.objects.count()
    context = {
        'students_count': studentscount,
        'programs_count': programscount,
    }
    return render(request, 'index.html', context)


def all_students(request):
    students = Students.objects.all()
    context = {
        'all_students': students
    }
    return render(request, 'students.html', context=context)


def student_details(request):
    reg_number = request.GET['reg']
    print(reg_number)
    student = Students.objects.get(regnumber=reg_number)
    context = {
        'student': student
    }
    return render(request, 'student_details.html', context=context)


def programs_details(request):
    all_programs = Programs.objects.all()
    context = {
        'all_programs': all_programs
    }
    return render(request, 'programs_details.html', context)
