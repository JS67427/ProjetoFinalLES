from django.urls import path
from .views import estatistica,tempo_medio_funcionario,tempo_medio_pcp,estatistica_pedido_funcionario,estatistica_pedido_docente,pedidos_medio_funcionario,pedidos_medio_pcp
from .views import estatisticas_gerais,estatisticas_satisfacao,estatisticas_eficiencia,estatisticas_funcionario
app_name = "estatisticas"

urlpatterns = [
    
    path('estatistica', estatistica, name='estatistica'),
    path('estatisticatempomediof', tempo_medio_funcionario, name='estatistica-tempo-medio-f'),
    path('estatisticatempomediopcp', tempo_medio_pcp, name='estatistica-tempo-medio-pcp'),
    path('estatisticasobrepedidof', estatistica_pedido_funcionario, name='estatistica-sobre-pedido-f'),
    path('estatisticasobrepedidod', estatistica_pedido_docente, name='estatistica-sobre-pedido-d'),
    path('estatisticapedidosmediof', pedidos_medio_funcionario, name='estatistica-pedidos-medio-f'),
    path('estatisticapedidosmediopcp', pedidos_medio_pcp, name='estatistica-pedidos-medio-pcp'),
    path('estatisticas-gerais/', estatisticas_gerais, name='estatisticas_gerais'),
    path('estatisticas-satisfacao/', estatisticas_satisfacao, name='estatisticas_satisfacao'),
    path('estatisticas-satisfacao/', estatisticas_eficiencia, name='estatisticas_eficiencia'),
    path('estatisticas-funcionario/', estatisticas_funcionario, name='estatisticas_funcionario'),
]

