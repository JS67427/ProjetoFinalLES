# Generated by Django 4.1.7 on 2024-05-18 21:12

from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    dependencies = [
        ('pedidos', '0036_pergunta_tema'),
    ]

    operations = [
        migrations.AlterField(
            model_name='questionario',
            name='estado',
            field=models.ForeignKey(default=6, on_delete=django.db.models.deletion.CASCADE, to='pedidos.estadoquestionario'),
        ),
    ]
