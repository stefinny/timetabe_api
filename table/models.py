# This is an auto-generated Django model module.
# You'll have to do the following manually to clean this up:
#   * Rearrange models' order
#   * Make sure each model has one field with primary_key=True
#   * Make sure each ForeignKey and OneToOneField has `on_delete` set to the desired behavior
#   * Remove `managed = False` lines if you wish to allow Django to create, modify, and delete the table
# Feel free to rename the models, but don't rename db_table values or field names.
from django.db import models


class Departments(models.Model):
    name = models.CharField(primary_key=True, max_length=50)
    faculty = models.ForeignKey('Faculties', models.CASCADE, db_column='faculty', blank=True, null=True)

    class Meta:
        db_table = 'departments'

    def __str__(self):
        return self.name


class Faculties(models.Model):
    facultyname = models.CharField(max_length=100, blank=True, null=True)

    class Meta:
        db_table = 'faculties'

    def __str__(self):
        return self.facultyname


class Programs(models.Model):
    name = models.CharField(primary_key=True, max_length=50)
    department = models.ForeignKey(Departments, models.CASCADE, db_column='department', blank=True, null=True)

    class Meta:
        db_table = 'programs'

    def __str__(self):
        return self.name


class Coursedetails(models.Model):
    coursename = models.ForeignKey(to=Programs, on_delete=models.CASCADE, db_column='coursename')
    units = models.CharField(max_length=200, blank=True, null=True)
    year = models.IntegerField()

    class Meta:
        db_table = 'coursedetails'

    def __str__(self):
        return self.coursename


class Students(models.Model):
    regnumber = models.CharField(primary_key=True, max_length=30)
    firstname = models.CharField(max_length=30, blank=True, null=True)
    surname = models.CharField(max_length=30, blank=True, null=True)
    courseid = models.IntegerField(blank=True, null=True)
    year = models.IntegerField(blank=True, null=True)

    class Meta:
        db_table = 'students'

    def __str__(self):
        return self.firstname + " " + self.surname


class Units(models.Model):
    number_7to9 = models.TextField(db_column='7to9', blank=True, null=True)  # Field renamed because it wasn't a valid Python identifier.
    number_9to11 = models.TextField(db_column='9to11', blank=True, null=True)  # Field renamed because it wasn't a valid Python identifier.
    number_11to1 = models.TextField(db_column='11to1', blank=True, null=True)  # Field renamed because it wasn't a valid Python identifier.
    number_1to3 = models.TextField(db_column='1to3', blank=True, null=True)  # Field renamed because it wasn't a valid Python identifier.
    number_3to5 = models.TextField(db_column='3to5', blank=True, null=True)  # Field renamed because it wasn't a valid Python identifier.
    number_5to7 = models.TextField(db_column='5to7', blank=True, null=True)  # Field renamed because it wasn't a valid Python identifier.
    day = models.CharField(max_length=15)

    class Meta:
        db_table = 'units'


class Venues(models.Model):
    number_7to9 = models.TextField(db_column='7to9', blank=True, null=True)  # Field renamed because it wasn't a valid Python identifier.
    number_9to11 = models.TextField(db_column='9to11', blank=True, null=True)  # Field renamed because it wasn't a valid Python identifier.
    number_11to1 = models.TextField(db_column='11to1', blank=True, null=True)  # Field renamed because it wasn't a valid Python identifier.
    number_1to3 = models.TextField(db_column='1to3', blank=True, null=True)  # Field renamed because it wasn't a valid Python identifier.
    number_3to5 = models.TextField(db_column='3to5', blank=True, null=True)  # Field renamed because it wasn't a valid Python identifier.
    number_5to7 = models.TextField(db_column='5to7', blank=True, null=True)  # Field renamed because it wasn't a valid Python identifier.
    day = models.CharField(max_length=15)

    class Meta:
        db_table = 'venues'
