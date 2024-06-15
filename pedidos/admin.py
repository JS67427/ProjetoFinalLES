from django.contrib import admin
from .models import*


# Register your models here.
admin.site.register(TipoDePedido)
admin.site.register(IdentificadorPedido)
admin.site.register(EstadoPedido)
admin.site.register(Pedido)
admin.site.register(PedidoOutros)
admin.site.register(Outros)
admin.site.register(PedidoDeHorario)
admin.site.register(Horario)
admin.site.register(PedidoUc)
admin.site.register(Uc)
admin.site.register(DocenteUc)
admin.site.register(SubpedidoUc)
admin.site.register(EstadoSala)
admin.site.register(Acao)
admin.site.register(Categoria)
admin.site.register(Edificio)
admin.site.register(Instituicao)
admin.site.register(TipoDeAulas)
admin.site.register(Sala)
admin.site.register(PedidoDeSala)
admin.site.register(subpedido_sala)
admin.site.register(Questionario)
admin.site.register(Pergunta)
admin.site.register(Resposta)
admin.site.register(Tema)
admin.site.register(EstadoQuestionario)


