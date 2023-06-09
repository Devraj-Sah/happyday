# Generated by Django 4.1.4 on 2023-03-15 11:08

from django.conf import settings
from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    dependencies = [
        migrations.swappable_dependency(settings.AUTH_USER_MODEL),
        ('root', '0014_order_email'),
    ]

    operations = [
        migrations.CreateModel(
            name='Review',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('star', models.CharField(choices=[(0, 0), (1, 1), (2, 2), (3, 3), (4, 4), (5, 5)], default=0, max_length=50)),
                ('product', models.ForeignKey(on_delete=django.db.models.deletion.DO_NOTHING, to='root.products')),
                ('user', models.ForeignKey(null=True, on_delete=django.db.models.deletion.DO_NOTHING, to=settings.AUTH_USER_MODEL)),
            ],
        ),
    ]
