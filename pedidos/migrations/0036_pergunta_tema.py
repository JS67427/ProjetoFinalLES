# Generated by Django 4.1.7 on 2024-05-18 20:27

from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    dependencies = [
        ('pedidos', '0035_rename_resposta_opcao_resposta_valor_and_more'),
    ]

    operations = [
        migrations.AddField(
            model_name='pergunta',
            name='tema',
            field=models.ForeignKey(default=1, on_delete=django.db.models.deletion.CASCADE, related_name='perguntas', to='pedidos.tema'),
        ),
    ]
