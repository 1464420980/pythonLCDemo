# Generated by Django 2.1.3 on 2018-11-19 04:34

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('hrs', '0004_auto_20180815_1345'),
    ]

    operations = [
        migrations.AddField(
            model_name='dept',
            name='excellent',
            field=models.BooleanField(default=0, verbose_name='是否优秀'),
        ),
    ]
