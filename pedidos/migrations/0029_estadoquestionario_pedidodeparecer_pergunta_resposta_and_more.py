# Generated by Django 4.1.7 on 2024-05-17 16:20

import django.core.validators
from django.db import migrations, models
import django.db.models.deletion
import django.utils.timezone


class Migration(migrations.Migration):

    dependencies = [
        ('pedidos', '0028_delete_estudante_remove_pedidodeparecer_pedido_ptr_and_more'),
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
        migrations.CreateModel(
            name='PedidoDeParecer',
            fields=[
                ('pedido_ptr', models.OneToOneField(auto_created=True, on_delete=django.db.models.deletion.CASCADE, parent_link=True, primary_key=True, serialize=False, to='pedidos.pedido')),
                ('parecer', models.TextField(blank=True, null=True)),
                ('documentos_anexos', models.FileField(blank=True, null=True, upload_to='documentos/', validators=[django.core.validators.FileExtensionValidator(allowed_extensions=['pdf'])])),
            ],
            options={
                'db_table': 'pedido_de_parecer',
            },
            bases=('pedidos.pedido',),
        ),
        migrations.CreateModel(
            name='Pergunta',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('texto', models.TextField()),
                ('tema', models.CharField(choices=[('Tempo do Pedido', 'Tempo do Pedido'), ('Pedido', 'Pedido'), ('Responsável', 'Responsável'), ('Outro', 'Outro')], default='Outro', max_length=50)),
            ],
            options={
                'db_table': 'pergunta',
            },
        ),
        migrations.CreateModel(
            name='Resposta',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('valor', models.IntegerField(choices=[(1, '1'), (2, '2'), (3, '3'), (4, '4'), (5, '5')])),
                ('pergunta', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, related_name='respostas', to='pedidos.pergunta')),
            ],
            options={
                'db_table': 'resposta',
            },
        ),
        migrations.CreateModel(
            name='Questionario',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('assunto', models.CharField(max_length=255)),
                ('data_limite', models.DateField()),
                ('data_criacao', models.DateTimeField(default=django.utils.timezone.now)),
                ('estado', models.ForeignKey(default=1, on_delete=django.db.models.deletion.CASCADE, to='pedidos.estadoquestionario')),
            ],
            options={
                'db_table': 'questionario',
            },
        ),
        migrations.AddField(
            model_name='pergunta',
            name='questionario',
            field=models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, related_name='perguntas', to='pedidos.questionario'),
        ),
    ]
