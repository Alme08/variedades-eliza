# Generated by Django 3.1 on 2023-06-29 18:55

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('auth', '0012_alter_user_first_name_max_length'),
        ('accounts', '0003_auto_20230629_1347'),
    ]

    operations = [
        migrations.AddField(
            model_name='account',
            name='permission',
            field=models.ManyToManyField(related_name='users', to='auth.Permission'),
        ),
    ]
