# Generated by Django 4.1.7 on 2024-04-20 23:44

from django.db import migrations


class Migration(migrations.Migration):

    dependencies = [
        ('pedidos', '0023_alter_pedidodeparecer_estado'),
    ]

    operations = [
        migrations.RemoveField(
            model_name='pedidodeparecer',
            name='estado',
        ),
    ]
