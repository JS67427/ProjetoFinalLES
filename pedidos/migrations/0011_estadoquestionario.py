# Generated by Django 4.1.7 on 2024-04-20 15:51

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('pedidos', '0010_delete_estadoquestionario'),
    ]

    operations = [
        migrations.CreateModel(
            name='EstadoQuestionario',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('estado', models.CharField(max_length=255)),
            ],
            options={
                'db_table': 'estado_questionario',
            },
        ),
    ]
