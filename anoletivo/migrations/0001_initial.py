# Generated by Django 4.1.7 on 2024-04-20 15:09

from django.db import migrations, models


class Migration(migrations.Migration):

    initial = True

    dependencies = [
    ]

    operations = [
        migrations.CreateModel(
            name='ano_letivo',
            fields=[
                ('id', models.AutoField(db_column='ID', primary_key=True, serialize=False)),
                ('ano_letivo', models.CharField(db_column='ano_letivo', max_length=255)),
                ('dia_inicio', models.DateField(blank=True, null=True)),
                ('dia_fim', models.DateField(blank=True, null=True)),
                ('ativo', models.CharField(db_column='ativo', max_length=10)),
            ],
            options={
                'db_table': 'ano_letivo',
            },
        ),
    ]
