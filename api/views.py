from django.shortcuts import render, HttpResponse
from table.models import Students, Programs, Coursedetails


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


def programs_list(request):
    all_programs = Programs.objects.all()
    context = {
        'all_programs': all_programs
    }
    return render(request, 'programs_list.html', context)


def program_details(request, program_name):
    program = Coursedetails.objects.filter(coursename=program_name)
    programs = []
    for p in program:
        units = p.units.split('.')
        pr = {'name': p.coursename, 'units': units, 'year': p.year}
        programs.append(pr)
    print(programs)
    context = {
        'programs': programs,
    }
    return render(request, 'program_details.html', context)
