# Generated by Django 4.1.7 on 2024-04-20 22:35

from django.conf import settings
from django.db import migrations, models
import django.db.models.deletion
import django.utils.timezone


class Migration(migrations.Migration):

    dependencies = [
        migrations.swappable_dependency(settings.AUTH_USER_MODEL),
        ('pedidos', '0013_centrodeinvestigacao'),
    ]

    operations = [
        migrations.CreateModel(
            name='PedidoDeParecer',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('relatorio_pdf', models.FileField(upload_to='relatorios/')),
                ('data_de_solicitacao', models.DateTimeField(default=django.utils.timezone.now)),
                ('centro_de_investigacao', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='pedidos.centrodeinvestigacao')),
                ('solicitante', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to=settings.AUTH_USER_MODEL)),
            ],
        ),
    ]
