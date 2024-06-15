from django.shortcuts import render
from pedidos.models import Pedido
from django.contrib.auth import *
import datetime

def relatorio(request):
    return render(request,
                  template_name="relatorio.html")

def relatorio_pedidos(request):
    # Inicializando todas as contagens como 0
    pedidos_espera_horario = pedidos_analise_horario = pedidos_aceites_horario = pedidos_rejeitados_horario = 0
    pedidos_espera_outros = pedidos_analise_outros = pedidos_aceites_outros = pedidos_rejeitados_outros = 0
    pedidos_espera_sala = pedidos_analise_sala = pedidos_aceites_sala = pedidos_rejeitados_sala = 0
    pedidos_espera_uc = pedidos_analise_uc = pedidos_aceites_uc = pedidos_rejeitados_uc = 0
    pedidos_espera_parecer = pedidos_analise_parecer = pedidos_aceites_parecer = pedidos_rejeitados_parecer = 0
    pedidos_espera_aluno = pedidos_analise_aluno = pedidos_aceites_aluno = pedidos_rejeitados_aluno = 0

    if request.method == 'POST':
        data_inicio = request.POST.get('data_de_inicio')
        data_fim = request.POST.get('data_de_fim')

        filtros = Q()
        if data_inicio and data_fim:
            filtros &= Q(data_de_associacao__range=(data_inicio, data_fim))

        pedidos_espera_horario = Pedido.objects.filter(filtros, estado_0=1, tipo='horario').count()
        pedidos_analise_horario = Pedido.objects.filter(filtros, estado_0=2, tipo='horario').count()
        pedidos_aceites_horario = Pedido.objects.filter(filtros, estado_0=3, tipo='horario').count()
        pedidos_rejeitados_horario = Pedido.objects.filter(filtros, estado_0=4, tipo='horario').count()

        pedidos_espera_outros = Pedido.objects.filter(filtros, estado_0=1, tipo='outros').count()
        pedidos_analise_outros = Pedido.objects.filter(filtros, estado_0=2, tipo='outros').count()
        pedidos_aceites_outros = Pedido.objects.filter(filtros, estado_0=3, tipo='outros').count()
        pedidos_rejeitados_outros = Pedido.objects.filter(filtros, estado_0=4, tipo='outros').count()

        pedidos_espera_sala = Pedido.objects.filter(filtros, estado_0=1, tipo='sala').count()
        pedidos_analise_sala = Pedido.objects.filter(filtros, estado_0=2, tipo='sala').count()
        pedidos_aceites_sala = Pedido.objects.filter(filtros, estado_0=3, tipo='sala').count()
        pedidos_rejeitados_sala = Pedido.objects.filter(filtros, estado_0=4, tipo='sala').count()

        pedidos_espera_uc = Pedido.objects.filter(filtros, estado_0=1, tipo='uc').count()
        pedidos_analise_uc = Pedido.objects.filter(filtros, estado_0=2, tipo='uc').count()
        pedidos_aceites_uc = Pedido.objects.filter(filtros, estado_0=3, tipo='uc').count()
        pedidos_rejeitados_uc = Pedido.objects.filter(filtros, estado_0=4, tipo='uc').count()

        pedidos_espera_parecer = Pedido.objects.filter(filtros, estado_0=1, tipo='parecer').count()
        pedidos_analise_parecer = Pedido.objects.filter(filtros, estado_0=2, tipo='parecer').count()
        pedidos_aceites_parecer = Pedido.objects.filter(filtros, estado_0=3, tipo='parecer').count()
        pedidos_rejeitados_parecer = Pedido.objects.filter(filtros, estado_0=4, tipo='parecer').count()

        pedidos_espera_aluno = Pedido.objects.filter(filtros, estado_0=1, tipo='aluno').count()
        pedidos_analise_aluno = Pedido.objects.filter(filtros, estado_0=2, tipo='aluno').count()
        pedidos_aceites_aluno = Pedido.objects.filter(filtros, estado_0=3, tipo='aluno').count()
        pedidos_rejeitados_aluno = Pedido.objects.filter(filtros, estado_0=4, tipo='aluno').count()

    context = {
        'pedidos_espera_horario': pedidos_espera_horario,
        'pedidos_analise_horario': pedidos_analise_horario,
        'pedidos_aceites_horario': pedidos_aceites_horario,
        'pedidos_rejeitados_horario': pedidos_rejeitados_horario,
        'pedidos_espera_outros': pedidos_espera_outros,
        'pedidos_analise_outros': pedidos_analise_outros,
        'pedidos_aceites_outros': pedidos_aceites_outros,
        'pedidos_rejeitados_outros': pedidos_rejeitados_outros,
        'pedidos_espera_sala': pedidos_espera_sala,
        'pedidos_analise_sala': pedidos_analise_sala,
        'pedidos_aceites_sala': pedidos_aceites_sala,
        'pedidos_rejeitados_sala': pedidos_rejeitados_sala,
        'pedidos_espera_uc': pedidos_espera_uc,
        'pedidos_analise_uc': pedidos_analise_uc,
        'pedidos_aceites_uc': pedidos_aceites_uc,
        'pedidos_rejeitados_uc': pedidos_rejeitados_uc,
        'pedidos_espera_parecer': pedidos_espera_parecer,
        'pedidos_analise_parecer': pedidos_analise_parecer,
        'pedidos_aceites_parecer': pedidos_aceites_parecer,
        'pedidos_rejeitados_parecer': pedidos_rejeitados_parecer,
        'pedidos_espera_aluno': pedidos_espera_aluno,
        'pedidos_analise_aluno': pedidos_analise_aluno,
        'pedidos_aceites_aluno': pedidos_aceites_aluno,
        'pedidos_rejeitados_aluno': pedidos_rejeitados_aluno,
    }
    return render(request, 'relatorios/relatorio.html', context)

def tabela_pedido(request):
    return render(request,
                  template_name="tabela_pedido.html")

def contar_tipos_pedidos(tipo):
    return Pedido.objects.filter(tipo=tipo).count()
    
def contar_pedidos(request):
    user = get_user(request)
    if user.groups.filter(name='Funcionario').exists():
        total_pedido_horario = contar_tipos_pedidos('horario')
        total_pedidos_sala = contar_tipos_pedidos('sala')
        total_pedidos_uc = contar_tipos_pedidos('uc')
        total_pedidos_outros = contar_tipos_pedidos('outros')
        total_pedidos_parecer = contar_tipos_pedidos('parecer')
        total_pedidos_aluno = contar_tipos_pedidos('aluno')
    else:
        total_pedido_horario = total_pedidos_sala = total_pedidos_uc = total_pedidos_outros = total_pedidos_parecer = total_pedidos_aluno = 0

    context = {
        'total_pedido_horario': total_pedido_horario,
        'total_pedidos_sala': total_pedidos_sala,
        'total_pedidos_uc': total_pedidos_uc,
        'total_pedidos_outros': total_pedidos_outros,
        'total_pedidos_parecer': total_pedidos_parecer,
        'total_pedidos_aluno': total_pedidos_aluno,
    }

    return render(request, 'relatorios/tabela_pedido.html', context)

def relatoriodocente(request):
    return render(request,
                  template_name="relatorio_docente.html")

