# Generated by Django 3.2.3 on 2022-05-16 05:18

from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    initial = True

    dependencies = [
    ]

    operations = [
        migrations.CreateModel(
            name='FichaMedica',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('observaciones', models.CharField(max_length=100)),
            ],
        ),
        migrations.CreateModel(
            name='Medico',
            fields=[
                ('rut_med', models.CharField(max_length=100, primary_key=True, serialize=False)),
                ('nom_med', models.CharField(max_length=100)),
            ],
        ),
        migrations.CreateModel(
            name='Paciente',
            fields=[
                ('rut_pac', models.CharField(max_length=100, primary_key=True, serialize=False)),
                ('nom_pac', models.CharField(max_length=100)),
                ('sexo_pac', models.CharField(max_length=10)),
                ('edad_pac', models.DateField(verbose_name='date published')),
            ],
        ),
        migrations.CreateModel(
            name='Prescripcion',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('id_medicamen', models.IntegerField()),
                ('Medicamento', models.CharField(max_length=100)),
                ('estado', models.CharField(max_length=20)),
                ('fichaMedica', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, related_name='prescripciones', to='consulta.fichamedica')),
            ],
        ),
        migrations.AddField(
            model_name='fichamedica',
            name='Medico',
            field=models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='consulta.medico'),
        ),
        migrations.AddField(
            model_name='fichamedica',
            name='paciente',
            field=models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='consulta.paciente'),
        ),
    ]
