# Generated by Django 4.1.4 on 2023-01-22 08:54

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('root', '0006_globalsettings_configure_email'),
    ]

    operations = [
        migrations.AddField(
            model_name='globalsettings',
            name='tiktok_link',
            field=models.CharField(max_length=255, null=True),
        ),
    ]