# Generated by Django 4.1.4 on 2023-03-15 09:16

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('root', '0013_products_link'),
    ]

    operations = [
        migrations.AddField(
            model_name='order',
            name='email',
            field=models.CharField(max_length=300, null=True),
        ),
    ]
