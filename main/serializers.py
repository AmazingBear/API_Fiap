from rest_framework import serializers
from .models import *

class TurmaSerializer(serializers.ModelSerializer):
    class Meta:
        model = Turma
        fields = [
            'cod_turma',
            'nome',
            'periodo',
            'dataInicio',
        ]

class AlunoSerializer(serializers.ModelSerializer):
    class Meta:
        model = Aluno
        fields = [
            'nome',
            'ra',
            'cpf',
            'turma',
        ]

class UsuarioSerializer(serializers.ModelSerializer):
    class Meta:
        model = Usuario
        fields = [
            'nome',
            'identificador',
            'senha',
            'nivelAcesso',
        ]

class MateriaSerializer(serializers.ModelSerializer):
    class Meta:
        model = Materia
        fields = [
            'nome',
            'professor',
            'turma',
        ]

class AssinaturaSerializer(serializers.ModelSerializer):
    class Meta:
        model = Assinatura
        fields = [
            'docente',
            'coordenador',
            'social',
            'aluno',
            'responsavel',
        ]

class FiapSerializer(serializers.ModelSerializer):
    class Meta:
        model = Fiap
        fields = [
            'progresso',
            'aluno',
            'turma',
            'dataInicio',
            'dataFinal',
            'usuario',
            'assinatura',
        ]

class FrequenciaSerializer(serializers.ModelSerializer):
    class Meta:
        model = Frequencia
        fields = [
            'aulasprevistas',
            'ausencias',
            'fiap',
        ]

class AproveitamentoSerializer(serializers.ModelSerializer):
    class Meta:
        model = Aproveitamento
        fields = [
            'materia',
            'notamedia',
            'notaaluno',
            'notarec',
            'fiap',
        ]

class AprendizagemSerializer(serializers.ModelSerializer):
    class Meta:
        model = Aprendizagem
        fields = [
            'atencao',
            'compreensao',
            'comprometimento',
            'relacionamento',
            'Outros',
            'fiap',
        ]

class OcorrenciaSerializer(serializers.ModelSerializer):
    class Meta:
        model = Ocorrencia
        fields = [
            'advverbal',
            'advescrita',
            'afastamento',
            'cancelmatricula',
            'fiap',
        ]

class ObservacaoSerializer(serializers.ModelSerializer):
    class Meta:
        model = Observacao
        fields = [
            'observacao',
            'fiap',
            'data',
        ]

class EmpresaSerializer(serializers.ModelSerializer):
    class Meta:
        model = Observacao
        fields = [
            'nome',
        ]

class ImportanciaSerializer(serializers.ModelSerializer):
    class Meta:
        model = Observacao
        fields = [
            'nivel',
        ]

class SatisfacaoSerializer(serializers.ModelSerializer):
    class Meta:
        model = Observacao
        fields = [
            'nivel',
        ]

class PerguntaSerializer(serializers.ModelSerializer):
    class Meta:
        model = Observacao
        fields = [
            'descricao',
        ]

class FormularioSerializer(serializers.ModelSerializer):
    class Meta:
        model = Observacao
        fields = [
            'aluno',
            'pergunta',
            'importancia',
            'satisfacao',
            'feedback',
        ]