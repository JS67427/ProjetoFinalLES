# Generated by Django 4.1.7 on 2024-04-20 23:42

from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    dependencies = [
        ('pedidos', '0021_remove_pedidodeparecer_estado'),
    ]

    operations = [
        migrations.AddField(
            model_name='pedidodeparecer',
            name='estado',
            field=models.ForeignKey(default=1, on_delete=django.db.models.deletion.CASCADE, to='pedidos.estadopedido'),
        ),
    ]
