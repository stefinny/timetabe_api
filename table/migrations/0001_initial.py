# Generated by Django 3.0.2 on 2020-01-16 11:46

from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    initial = True

    dependencies = [
    ]

    operations = [
        migrations.CreateModel(
            name='AllUnits',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('unitcode', models.CharField(max_length=10)),
                ('unitname', models.TextField(blank=True, null=True)),
                ('course', models.TextField(blank=True, null=True)),
            ],
            options={
                'db_table': 'allunits',
                'managed': True,
            },
        ),
        migrations.CreateModel(
            name='Departments',
            fields=[
                ('name', models.CharField(max_length=50, primary_key=True, serialize=False)),
            ],
            options={
                'db_table': 'departments',
                'managed': True,
            },
        ),
        migrations.CreateModel(
            name='Faculties',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('facultyname', models.CharField(blank=True, max_length=100, null=True)),
            ],
            options={
                'db_table': 'faculties',
                'managed': True,
            },
        ),
        migrations.CreateModel(
            name='Students',
            fields=[
                ('regnumber', models.CharField(max_length=30, primary_key=True, serialize=False)),
                ('firstname', models.CharField(blank=True, max_length=30, null=True)),
                ('surname', models.CharField(blank=True, max_length=30, null=True)),
                ('courseid', models.IntegerField(blank=True, null=True)),
                ('year', models.IntegerField(blank=True, null=True)),
            ],
            options={
                'db_table': 'students',
                'managed': True,
            },
        ),
        migrations.CreateModel(
            name='Units',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('number_7to9', models.TextField(blank=True, db_column='7to9', null=True)),
                ('number_9to11', models.TextField(blank=True, db_column='9to11', null=True)),
                ('number_11to1', models.TextField(blank=True, db_column='11to1', null=True)),
                ('number_1to3', models.TextField(blank=True, db_column='1to3', null=True)),
                ('number_3to5', models.TextField(blank=True, db_column='3to5', null=True)),
                ('number_5to7', models.TextField(blank=True, db_column='5to7', null=True)),
                ('day', models.CharField(max_length=15)),
            ],
            options={
                'db_table': 'units',
                'managed': True,
            },
        ),
        migrations.CreateModel(
            name='Venues',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('number_7to9', models.TextField(blank=True, db_column='7to9', null=True)),
                ('number_9to11', models.TextField(blank=True, db_column='9to11', null=True)),
                ('number_11to1', models.TextField(blank=True, db_column='11to1', null=True)),
                ('number_1to3', models.TextField(blank=True, db_column='1to3', null=True)),
                ('number_3to5', models.TextField(blank=True, db_column='3to5', null=True)),
                ('number_5to7', models.TextField(blank=True, db_column='5to7', null=True)),
                ('day', models.CharField(max_length=15)),
            ],
            options={
                'db_table': 'venues',
                'managed': True,
            },
        ),
        migrations.CreateModel(
            name='Programs',
            fields=[
                ('name', models.CharField(max_length=50, primary_key=True, serialize=False)),
                ('department', models.ForeignKey(blank=True, db_column='department', null=True, on_delete=django.db.models.deletion.CASCADE, to='table.Departments')),
            ],
            options={
                'db_table': 'programs',
                'managed': True,
            },
        ),
        migrations.AddField(
            model_name='departments',
            name='faculty',
            field=models.ForeignKey(blank=True, db_column='faculty', null=True, on_delete=django.db.models.deletion.CASCADE, to='table.Faculties'),
        ),
        migrations.CreateModel(
            name='CourseDetails',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('units', models.CharField(blank=True, max_length=200, null=True)),
                ('year', models.IntegerField()),
                ('coursename', models.ForeignKey(db_column='coursename', on_delete=django.db.models.deletion.CASCADE, to='table.Programs')),
            ],
            options={
                'db_table': 'coursedetails',
                'managed': True,
            },
        ),
    ]