# Generated by Django 4.1.7 on 2024-04-20 23:30

from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    dependencies = [
        ('pedidos', '0014_pedidodeparecer'),
    ]

    operations = [
        migrations.AddField(
            model_name='pedidodeparecer',
            name='estado',
            field=models.ForeignKey(blank=True, null=True, on_delete=django.db.models.deletion.CASCADE, to='pedidos.estadopedido'),
        ),
    ]
