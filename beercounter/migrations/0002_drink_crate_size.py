# -*- coding: utf-8 -*-
# Generated by Django 1.9.5 on 2016-05-13 09:31
from __future__ import unicode_literals

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('beercounter', '0001_initial'),
    ]

    operations = [
        migrations.AddField(
            model_name='drink',
            name='crate_size',
            field=models.IntegerField(default=24),
        ),
    ]
