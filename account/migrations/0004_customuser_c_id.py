# Generated by Django 4.1.4 on 2023-03-31 07:09

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('account', '0003_customuser_current_address_and_more'),
    ]

    operations = [
        migrations.AddField(
            model_name='customuser',
            name='c_id',
            field=models.BigIntegerField(null=True),
        ),
    ]
