# Generated by Django 3.2.9 on 2021-11-29 11:32

import datetime
from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('main', '0002_auto_20211129_0830'),
    ]

    operations = [
        migrations.AlterField(
            model_name='fiap',
            name='dataFinal',
            field=models.DateTimeField(default=datetime.datetime(2021, 11, 29, 8, 32, 33, 455640), null=True),
        ),
        migrations.AlterField(
            model_name='fiap',
            name='dataInicio',
            field=models.DateTimeField(default=datetime.datetime(2021, 11, 29, 8, 32, 33, 455640)),
        ),
        migrations.AlterField(
            model_name='observacao',
            name='data',
            field=models.DateTimeField(default=datetime.datetime(2021, 11, 29, 8, 32, 33, 458637)),
        ),
        migrations.AlterField(
            model_name='turma',
            name='dataInicio',
            field=models.DateTimeField(default=datetime.datetime(2021, 11, 29, 8, 32, 33, 454643)),
        ),
    ]
