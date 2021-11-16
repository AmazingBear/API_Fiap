# Generated by Django 3.2.9 on 2021-11-08 11:27

import datetime
from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    initial = True

    dependencies = [
    ]

    operations = [
        migrations.CreateModel(
            name='Aluno',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('nome', models.CharField(max_length=50)),
                ('ra', models.CharField(max_length=8)),
            ],
        ),
        migrations.CreateModel(
            name='Assinatura',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('docente', models.ImageField(null=True, upload_to='docente/%y/%m/%d/')),
                ('coordenador', models.ImageField(null=True, upload_to='coordenador/%y/%m/%d/')),
                ('social', models.ImageField(null=True, upload_to='social/%y/%m/%d/')),
                ('aluno', models.ImageField(null=True, upload_to='aluno/%y/%m/%d/')),
                ('responsavel', models.ImageField(null=True, upload_to='responsavel/%y/%m/%d/')),
            ],
        ),
        migrations.CreateModel(
            name='Colaborador',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('nome', models.CharField(max_length=50)),
                ('nif', models.CharField(max_length=11)),
                ('senha', models.CharField(max_length=50)),
                ('nivelAcesso', models.CharField(choices=[('1', 'Professor'), ('2', 'Analista'), ('3', 'Coordenador')], default='1', max_length=15)),
            ],
        ),
        migrations.CreateModel(
            name='Fiap',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('progresso', models.CharField(choices=[('1', 'Iniciada'), ('2', 'Em Análise'), ('3', 'Finalizada')], default='1', max_length=20)),
                ('dataInicio', models.DateTimeField(default=datetime.datetime(2021, 11, 8, 8, 27, 11, 538473))),
                ('dataFinal', models.DateTimeField(default=datetime.datetime(2021, 11, 8, 8, 27, 11, 538473), null=True)),
                ('aluno', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='main.aluno')),
                ('assinatura', models.ForeignKey(blank=True, null=True, on_delete=django.db.models.deletion.CASCADE, to='main.assinatura')),
                ('colaborador', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='main.colaborador')),
            ],
        ),
        migrations.CreateModel(
            name='Turma',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('nome', models.CharField(max_length=50)),
                ('periodo', models.CharField(choices=[('1', 'Manhã'), ('2', 'Tarde'), ('3', 'Noite')], default='1', max_length=15)),
            ],
        ),
        migrations.CreateModel(
            name='Ocorrencia',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('advverbal', models.BooleanField(blank=True, default=False, null=True)),
                ('advescrita', models.BooleanField(blank=True, default=False, null=True)),
                ('afastamento', models.BooleanField(blank=True, default=False, null=True)),
                ('cancelmatricula', models.BooleanField(blank=True, default=False, null=True)),
                ('fiap', models.ForeignKey(blank=True, on_delete=django.db.models.deletion.CASCADE, to='main.fiap')),
            ],
        ),
        migrations.CreateModel(
            name='Observacao',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('observacao', models.CharField(max_length=500)),
                ('data', models.DateTimeField(default=datetime.datetime(2021, 11, 8, 8, 27, 11, 540468))),
                ('fiap', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='main.fiap')),
            ],
        ),
        migrations.CreateModel(
            name='Materia',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('nome', models.CharField(max_length=50)),
                ('professor', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='main.colaborador')),
                ('turma', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='main.turma')),
            ],
        ),
        migrations.CreateModel(
            name='Frequencia',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('aulasprevistas', models.IntegerField()),
                ('ausencias', models.IntegerField()),
                ('fiap', models.ForeignKey(blank=True, on_delete=django.db.models.deletion.CASCADE, to='main.fiap')),
            ],
        ),
        migrations.AddField(
            model_name='fiap',
            name='turma',
            field=models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='main.turma'),
        ),
        migrations.CreateModel(
            name='Aproveitamento',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('notamedia', models.IntegerField()),
                ('notaaluno', models.IntegerField()),
                ('notarec', models.IntegerField(blank=True, null=True)),
                ('fiap', models.ForeignKey(blank=True, on_delete=django.db.models.deletion.CASCADE, to='main.fiap')),
                ('materia', models.ForeignKey(blank=True, on_delete=django.db.models.deletion.CASCADE, to='main.materia')),
            ],
        ),
        migrations.CreateModel(
            name='Aprendizagem',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('atencao', models.BooleanField(blank=True, default=False, null=True)),
                ('compreensao', models.BooleanField(blank=True, default=False, null=True)),
                ('comprometimento', models.BooleanField(blank=True, default=False, null=True)),
                ('relacionamento', models.BooleanField(blank=True, default=False, null=True)),
                ('Outros', models.CharField(blank=True, max_length=100, null=True)),
                ('fiap', models.ForeignKey(blank=True, on_delete=django.db.models.deletion.CASCADE, to='main.fiap')),
            ],
        ),
        migrations.AddField(
            model_name='aluno',
            name='turma',
            field=models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='main.turma'),
        ),
    ]