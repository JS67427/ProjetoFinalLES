from django.urls import path
from .views import relatorio, relatoriodocente, tabela_pedido
from . import views

app_name = 'relatorios'
urlpatterns = [
    path('relatorio', relatorio, name='relatorio'),
    path('tabelapedido', tabela_pedido, name='tabela-pedido'),
    path('relatoriodocente', relatoriodocente, name='relatorio-docente'),
]
