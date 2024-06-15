from django.db import models
from pedidos.models import Pedido, EstadoPedido 
from pedidos.models import TipoDePedido

class Pedido(models.Model):
    TIPO_CHOICES = [
        ('horario', 'Horário'),
        ('outros', 'Outros'),
        ('sala', 'Sala'),
        ('uc', 'UC'),
        ('parecer', 'Parecer'),
        ('aluno', 'Aluno'),
    ]

    ESTADO_CHOICES = [
        (1, 'Espera'),
        (2, 'Análise'),
        (3, 'Aceite'),
        (4, 'Rejeitado'),
    ]

    tipo = models.CharField(max_length=10, choices=TIPO_CHOICES)
    estado_0 = models.IntegerField(choices=ESTADO_CHOICES, default=1)
    data = models.DateField()
    data_de_validacao = models.DateField(null=True, blank=True)

    def __str__(self):
        return f"{self.tipo} - {self.get_estado_0_display()}"