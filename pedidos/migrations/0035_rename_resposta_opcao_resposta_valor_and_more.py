# Generated by Django 4.1.7 on 2024-05-18 15:57

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('pedidos', '0034_remove_resposta_valor_resposta_resposta_opcao_and_more'),
    ]

    operations = [
        migrations.RenameField(
            model_name='resposta',
            old_name='resposta_opcao',
            new_name='valor',
        ),
        migrations.RemoveField(
            model_name='pergunta',
            name='tema',
        ),
        migrations.AlterField(
            model_name='pergunta',
            name='tipo',
            field=models.CharField(choices=[('texto', 'texto'), ('multipla', 'multipla')], default='texto', max_length=20),
        ),
    ]
