from django.forms import *
from django import forms
from .models import *

from .models import Questionario, Pergunta


class PedidoOutrosForm(forms.ModelForm):
    data = forms.CharField(max_length=25)
    assunto = forms.CharField(max_length=255)
    subpedidos = forms.CharField(widget=forms.HiddenInput(), required=False)
    informacoes = forms.CharField(max_length=500)


    class Meta:
        model = PedidoOutros
        fields = ('data','assunto', 'subpedidos','informacoes',)
    
    def clean(self) :
        data = self.cleaned_data.get('data')
        assunto = self.cleaned_data.get('assunto')



class PedidoHorarioForm(forms.ModelForm):
    assunto = forms.CharField(max_length=255)
    data = forms.CharField(max_length=255)
    subpedidos = forms.CharField(widget=forms.HiddenInput(), required=False)
    descricao = forms.CharField(max_length=500)


    class Meta:
        model = PedidoDeHorario
        fields = ('assunto', 'data', 'subpedidos', 'descricao',)
    
    def clean(self) :
        hora_inicial = self.cleaned_data.get('hora_inicial')
        hora_final = self.cleaned_data.get('hora_final')
        assunto = self.cleaned_data.get('assunto')
        data = self.cleaned_data.get('data')
        descricao = self.cleaned_data.get('descricao')



class PedidoSalasForm(forms.ModelForm):
    data = forms.CharField(max_length=25)
    assunto = forms.CharField(max_length=255)
    subpedidos = forms.CharField(widget=forms.HiddenInput(), required=False)
    informacoes = forms.CharField(max_length=500)

    class Meta:
        model = PedidoDeSala
        fields = ('data','assunto', 'subpedidos','informacoes',)
    
    def clean(self) :
        data = self.cleaned_data.get('data')
        assunto = self.cleaned_data.get('assunto')

        

class PedidoUcForm(forms.ModelForm):
    descricao = forms.CharField(max_length=500)
    data = forms.CharField(max_length=100)
    assunto = forms.CharField(max_length=100)

    class Meta:
        model = PedidoUc
        fields = ('descricao','data','assunto',)
    
    def clean(self) :
        descricao = self.cleaned_data.get('descricao')
        data = self.cleaned_data.get('data')
        assunto = self.cleaned_data.get('assunto')
        
        
        
class QuestionarioForm(forms.ModelForm):
    class Meta:
        model = Questionario
        fields = ['assunto', 'data_inicio', 'data_limite']

class PerguntaForm(forms.ModelForm):
    class Meta:
        model = Pergunta
        fields = ['texto', 'tipo', 'opcao1', 'opcao2', 'opcao3', 'opcao4', 'opcao5', 'opcao6', 'tipo', 'tema']
        
        
        
class TemaForm(forms.ModelForm):
    class Meta:
        model = Tema
        fields = ['tema']
        
class PedidoAlunoForm(forms.ModelForm):
    data = forms.CharField(max_length=25)
    assunto = forms.CharField(max_length=255)
    subpedidos = forms.CharField(widget=forms.HiddenInput(), required=False)
    informacoes = forms.CharField(max_length=500)
    
    
class EstadoQuestionarioForm(forms.ModelForm):
    class Meta:
        model = EstadoQuestionario
        fields = ['estado']
        

        
class RespostaForm(forms.ModelForm):
    form_index = forms.IntegerField(widget=forms.HiddenInput(), required=False)

    class Meta:
        model = Resposta
        fields = ['resposta_texto', 'valor', 'form_index']

    def __init__(self, *args, **kwargs):
        pergunta = kwargs.pop('pergunta', None)
        super().__init__(*args, **kwargs)

        if pergunta:
            if pergunta.tipo == 'texto':
                self.fields['resposta_texto'].widget = forms.Textarea(attrs={'rows': 3})
                self.fields['resposta_texto'].label = pergunta.texto
                self.fields['valor'].widget = forms.HiddenInput()
            else:
                choices = [
                    (pergunta.opcao1, pergunta.opcao1),
                    (pergunta.opcao2, pergunta.opcao2),
                    (pergunta.opcao3, pergunta.opcao3),
                    (pergunta.opcao4, pergunta.opcao4),
                    (pergunta.opcao5, pergunta.opcao5),
                    (pergunta.opcao6, pergunta.opcao6),
                ]
                self.fields['valor'] = forms.ChoiceField(
                    choices=[(choice, choice) for choice in choices if choice[0]],
                    widget=forms.RadioSelect,
                    label=pergunta.texto
                )
                self.fields['resposta_texto'].widget = forms.HiddenInput()



class EstadoPedidoForm(forms.ModelForm):
    class Meta:
        model = EstadoPedido
        fields = ['estado','descricao']