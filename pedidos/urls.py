from django.urls import path
from .views import criar_pedidos_outros, editar_pedidos_outros, eliminar_pedido_outros, consultar_pedido_outros
from .views import listar_pedidos
from .views import criar_pedidos_sala, editar_pedido_sala, eliminar_pedido_sala, consultar_pedido_sala
from .views import criar_pedidos_uc, editar_pedidos_uc, eliminar_pedido_uc, consultar_pedidos_uc
from .views import criar_pedidos_horario, editar_pedidos_horario, eliminar_pedido_horario, consultar_pedido_horario
from .views import exportar_todos_pedidos_pdf, exportar_todos_pedidos_csv, exportar_pedidos_pdf, exportar_pedidos_csv, exportar_pedidos
from .views import mensagem
from .views import associar_pedido_funcionario, validar_pedido, desassociar_pedido_funcionario
from .views import consultar_pedidos
from .views import exportar_pedidos_table
from .views import obter_informacao
from .views import ArquivarPedido, DesarquivarPedido
from .views import *

app_name = "pedidos"

urlpatterns = [
    path('listagempedidos', consultar_pedidos.as_view(), name='listagem-pedidos'),
    # path('exportarpedidos', exportar_pedidos_table.as_view(), name='exportar-pedidos'),
    path('obterinformacao/<int:id>', obter_informacao, name='obter-informacao'),

    path('listarpedidos', listar_pedidos, name='listar-pedidos'),
    path('exportarpedidos', exportar_pedidos, name='exportar-pedidos'),
    path('exportarpedidospdf/<int:id>', exportar_pedidos_pdf, name='exportar-pedidos-pdf'),
    path('exportarpedidoscsv/<int:id>', exportar_pedidos_csv, name='exportar-pedidos-csv'),
    path('exportartodospedidospdf', exportar_todos_pedidos_pdf, name='exportar-todos-pedidos-pdf'),
    path('exportartodospedidoscsv', exportar_todos_pedidos_csv, name='exportar-todos-pedidos-csv'),

    path('consultarpedidooutros/<int:id>', consultar_pedido_outros, name='consultar-pedido-outros'),
    path('criarpedidooutros', criar_pedidos_outros, name='criar-pedido-outros'),
    path('editarpedidooutros/<int:id>', editar_pedidos_outros, name='editar-pedido-outros'),
    path('eliminarpedidooutros/<int:id>', eliminar_pedido_outros, name='eliminar-pedido-outros'),

    path('criarpedidosala', criar_pedidos_sala, name='criar-pedido-sala'),
    path('editarpedidosala/<int:id>', editar_pedido_sala, name='editar-pedido-sala'),
    path('eliminarpedidosala/<int:id>', eliminar_pedido_sala, name='eliminar-pedido-sala'),
    path('consultarpedidosala/<int:id>', consultar_pedido_sala, name='consultar-pedido-sala'),

    path('consultarpedidosuc/<int:id>', consultar_pedidos_uc, name='consultar-pedido-uc'),
    path('criarpedidouc', criar_pedidos_uc, name='criar-pedido-uc'),
    path('editarpedidouc/<int:id>', editar_pedidos_uc, name='editar-pedido-uc'),
    path('eliminarpedidouc/<int:id>', eliminar_pedido_uc, name='eliminar-pedido-uc'),

    path('consultarpedidohorario/<int:id>', consultar_pedido_horario, name='consultar-pedido-horario'),
    path('criarpedidohorario', criar_pedidos_horario, name='criar-pedido-horario'),
    path('editarpedidohorario/<int:id>', editar_pedidos_horario, name='editar-pedido-horario'),
    path('eliminarpedidohorario/<int:id>', eliminar_pedido_horario, name='eliminar-pedido-horario'),

    path('desassociarpedidofuncionario/<int:id>', desassociar_pedido_funcionario, name='desassociar-pedido-funcionario'),
    path('associarpedidofuncionario/<int:id>', associar_pedido_funcionario, name='associar-pedido-funcionario'),
    path('validarpedido/<int:id>', validar_pedido, name='validar-pedido'),
    path('mensagem/<int:id>', mensagem, name='mensagem'),

    path('listar-questionarios/', listar_questionarios, name='listar_questionarios'),
    path('criar-questionario/', criar_questionario, name='criar_questionario'),
    path('questionario/<int:questionario_id>', consultar_questionario, name='consultar_questionario'),
    path('questionario/<int:pk>/editar/', editar_questionario, name='editar_questionario'),

    path('questionario/<int:pk>/arquivar/', arquivar_questionario, name='arquivar_questionario'),
    path('questionario/<int:pk>/publicar/', publicar_questionario, name='publicar_questionario'),
    path('questionario/<int:pk>/inativo/', inativar_questionario, name='inativar_questionario'),
    path('questionarios/excluir/<int:pk>/', excluir_questionario, name='excluir_questionario'),

    path('criar_estado_questionario/', criar_estado_questionario, name='criar_estado_questionario'),
    path('listar-estados-questionarios/', listar_estados_questionario, name='listar_estados_questionario'),
    path('eliminar_estado_questionario/<int:estado_id>/', eliminar_estado_questionario, name='eliminar_estado_questionario'),
    path('estados/editar/<int:pk>/', editar_estado_questionario, name='editar_estado_questionario'),

    path('questionario/<int:pk>/validar/', validar_questionario, name='validar_questionario'),
    path('criar-tema/', criar_tema, name='criar_tema'),
    path('listar-temas/', listar_temas, name='listar_temas'),
    path('questionario/<int:pk>/eliminar/', eliminar_tema, name='eliminar_tema'),
    path('temas/<int:pk>/editar-tema/', editar_tema, name='editar_tema'),

    path('arquivar/<int:pedido_id>/', ArquivarPedido.as_view(), name='arquivar_pedido'),
    path('desarquivar/<int:pedido_id>/', DesarquivarPedido.as_view(), name='desarquivar_pedido'),

    path('responder/<int:questionario_id>/', salvar_respostas, name='salvar_respostas'),
    path('salvar_respostas/', salvar_respostas, name='salvar_respostas'),
    path('sucesso/', questionario_sucesso, name='questionario_sucesso'),

    path('criarpedidoaluno', criar_pedidos_aluno, name='criar_pedido_aluno'),
    path('consultar_pedido_de_aluno/<int:id>/', consultar_pedido_de_aluno, name='consultar_pedido_de_aluno'),
    path('eliminar_pedido_de_aluno/<int:id>/', eliminar_pedido_de_aluno, name='eliminar_pedido_de_aluno'),
    path('criarpedidoparecer', criar_pedidos_parecer, name='criar_pedido_parecer'),
    path('consultar_pedido_de_parecer/<int:id>/', consultar_pedido_de_parecer, name='consultar_pedido_de_parecer'),
    path('eliminar_pedido_de_parecer/<int:id>/', eliminar_pedido_de_parecer, name='eliminar_pedido_de_parecer'),
    path('editar_pedido_de_parecer/<int:id>/', editar_pedidos_parecer, name='editar_pedido_de_parecer'),
    
    
    
    path('estados/', listar_estados, name='listar_estados'),
    path('estados/criar/', criar_estado, name='criar_estado'),
    path('estados_pedido/editar/<int:pk>/', editar_estado, name='editar_estado'),
    path('estados/eliminar/<int:estado_id>/', eliminar_estado, name='eliminar_estado'),
]