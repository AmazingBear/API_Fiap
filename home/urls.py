from django.urls import path
from .views import *

urlpatterns = [
    path('', home, name='home'),
    path('cadAluno/', cadAluno, name='cadAluno'),
    path('cadColaborador/', cadColaborador, name='cadColaborador'),
    path('cadTurma/', cadTurma, name='cadTurma'),
    path("turma/", TurmaAPIView.as_view(), name='turma'),
    path('aluno/', AlunoAPIView.as_view(), name='aluno'),
    path('colaborador/', ColaboradorAPIView.as_view(), name='colaborador'),
    path('materia/', MateriaAPIView.as_view(), name='materia'),
    path('assinatura/', AssinaturaAPIView.as_view(), name='assinatura'),
    path('fiap/', FiapAPIView.as_view(), name='fiap'),
    path('frequencia/', FrequenciaAPIView.as_view(), name='frequencia'),
    path('aproveitamento/', AproveitamentoAPIView.as_view(), name='aproveitamento'),
    path('aprendizagem/', AprendizagemAPIView.as_view(), name='aprendizagem'),
    path('ocorrencia/', OcorrenciaAPIView.as_view(), name='ocorrencia'),
    path('observacao/', ObservacaoAPIView.as_view(), name='observacao'),

    path('turma/<int:pk>/', TurmaAPIView.as_view(), name='turmaParameters'),

]
