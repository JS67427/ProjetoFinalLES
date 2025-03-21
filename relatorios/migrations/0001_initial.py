# Generated by Django 4.1.7 on 2024-05-19 13:16

from django.db import migrations, models


class Migration(migrations.Migration):

    initial = True

    dependencies = [
    ]

    operations = [
        migrations.CreateModel(
            name='Pedido',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('tipo', models.CharField(choices=[('horario', 'Horário'), ('outros', 'Outros'), ('sala', 'Sala'), ('uc', 'UC'), ('parecer', 'Parecer'), ('aluno', 'Aluno')], max_length=10)),
                ('status', models.CharField(choices=[('espera', 'Em Espera'), ('analise', 'Em Análise'), ('aceite', 'Aceite'), ('rejeitado', 'Rejeitado')], max_length=10)),
                ('data', models.DateField()),
            ],
        ),
    ]
