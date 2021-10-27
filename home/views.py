from django.shortcuts import render, redirect
from .models import Aluno, Colaborador, Turma, Fiap, Materia, Frequencia, Assinatura, Observacao, Ocorrencia, \
    Aprendizagem, Aproveitamento
from rest_framework.views import APIView
from rest_framework.response import Response
from rest_framework import status
from .serializers import *



class TurmaAPIView(APIView):
    """
    API Turma
    """

    def get(self, request, pk=''):
        if pk == '':
            turma = Turma.objects.all()
            serializer = TurmaSerializer(turma, many=True)
            return Response(serializer.data)
        else:
            turma = Turma.objects.get(id=pk)
            serializer = TurmaSerializer(turma)
            return Response(serializer.data)


    def post(self, request):
        serializer = TurmaSerializer(data=request.data, many=True)
        serializer.is_valid(raise_exception=True)
        serializer.save()
        #return Response({"msg": "Inserido com sucesso"})
        return Response({"id": serializer.data['id']})
        # return Response(serializer.data, status=status.HTTP_201_

    def put(self, request, pk=''):
        usuario = Turma.objects.get(id=pk)
        serializer = TurmaSerializer(usuario, data=request.data)
        serializer.is_valid(raise_exception=True)
        serializer.save()
        return Response(serializer.data)

    def delete(self, request, pk=''):
        turma = Turma.objects.get(id=pk)
        turma.delete()
        return Response('Turma Apagada')


class AlunoAPIView(APIView):
    """
    API Aluno
    """

    def get(self, request):
        aluno = Aluno.objects.all()
        serializer = AlunoSerializer(aluno, many=True)
        return Response(serializer.data)

    def post(self, request):
        serializer = AlunoSerializer(data=request.data, many=True)
        serializer.is_valid(raise_exception=True)
        serializer.save()
        #return Response({"msg": "Inserido com sucesso"})
        return Response({"id": serializer.data['id']})
        # return Response(serializer.data, status=status.HTTP_201_CREATED)

class ColaboradorAPIView(APIView):
    """
    API Colaborador
    """

    def get(self, request):
        colaborador = Colaborador.objects.all()
        serializer = ColaboradorSerializer(colaborador, many=True)
        return Response(serializer.data)

    def post(self, request):
        serializer = ColaboradorSerializer(data=request.data, many=True)
        serializer.is_valid(raise_exception=True)
        serializer.save()
        #return Response({"msg": "Inserido com sucesso"})
        return Response({"id": serializer.data['id']})
        # return Response(serializer.data, status=status.HTTP_201_CREATED)

class MateriaAPIView(APIView):
    """
    API Materia
    """

    def get(self, request):
        materia = Materia.objects.all()
        serializer = MateriaSerializer(materia, many=True)
        return Response(serializer.data)

    def post(self, request):
        serializer = MateriaSerializer(data=request.data, many=True)
        serializer.is_valid(raise_exception=True)
        serializer.save()
        #return Response({"msg": "Inserido com sucesso"})
        return Response({"id": serializer.data['id']})
        # return Response(serializer.data, status=status.HTTP_201_CREATED)

class AssinaturaAPIView(APIView):
    """
    API Assinatura
    """

    def get(self, request):
        assinatura = Assinatura.objects.all()
        serializer = AssinaturaSerializer(assinatura, many=True)
        return Response(serializer.data)

    def post(self, request):
        serializer = AssinaturaSerializer(data=request.data, many=True)
        serializer.is_valid(raise_exception=True)
        serializer.save()
        #return Response({"msg": "Inserido com sucesso"})
        return Response({"id": serializer.data['id']})
        # return Response(serializer.data, status=status.HTTP_201_CREATED)

class FiapAPIView(APIView):
    """
    API Fiap
    """

    def get(self, request):
        fiap = Fiap.objects.all()
        serializer = FiapSerializer(fiap, many=True)
        return Response(serializer.data)

    def post(self, request):
        serializer = FiapSerializer(data=request.data, many=True)
        serializer.is_valid(raise_exception=True)
        serializer.save()
        #return Response({"msg": "Inserido com sucesso"})
        return Response({"id": serializer.data['id']})
        # return Response(serializer.data, status=status.HTTP_201_CREATED)

class FrequenciaAPIView(APIView):
    """
    API Frequencia
    """

    def get(self, request):
        frequencia = Frequencia.objects.all()
        serializer = FrequenciaSerializer(frequencia, many=True)
        return Response(serializer.data)

    def post(self, request):
        serializer = FrequenciaSerializer(data=request.data, many=True)
        serializer.is_valid(raise_exception=True)
        serializer.save()
        #return Response({"msg": "Inserido com sucesso"})
        return Response({"id": serializer.data['id']})
        # return Response(serializer.data, status=status.HTTP_201_CREATED)

class AproveitamentoAPIView(APIView):
    """
    API Aproveitamento
    """

    def get(self, request):
        aproveitamento = Aproveitamento.objects.all()
        serializer = AproveitamentoSerializer(aproveitamento, many=True)
        return Response(serializer.data)

    def post(self, request):
        serializer = AproveitamentoSerializer(data=request.data, many=True)
        serializer.is_valid(raise_exception=True)
        serializer.save()
        #return Response({"msg": "Inserido com sucesso"})
        return Response({"id": serializer.data['id']})
        # return Response(serializer.data, status=status.HTTP_201_CREATED)

class AprendizagemAPIView(APIView):
    """
    API Aprendizagem
    """

    def get(self, request):
        aprendizagem = Aprendizagem.objects.all()
        serializer = AprendizagemSerializer(aprendizagem, many=True)
        return Response(serializer.data)

    def post(self, request):
        serializer = AprendizagemSerializer(data=request.data, many=True)
        serializer.is_valid(raise_exception=True)
        serializer.save()
        #return Response({"msg": "Inserido com sucesso"})
        return Response({"id": serializer.data['id']})
        # return Response(serializer.data, status=status.HTTP_201_CREATED)

class OcorrenciaAPIView(APIView):
    """
    API Ocorrencia
    """

    def get(self, request):
        ocorrencia = Ocorrencia.objects.all()
        serializer = OcorrenciaSerializer(ocorrencia, many=True)
        return Response(serializer.data)

    def post(self, request):
        serializer = OcorrenciaSerializer(data=request.data, many=True)
        serializer.is_valid(raise_exception=True)
        serializer.save()
        #return Response({"msg": "Inserido com sucesso"})
        return Response({"id": serializer.data['id']})
        # return Response(serializer.data, status=status.HTTP_201_CREATED)

class ObservacaoAPIView(APIView):
    """
    API Observacao
    """

    def get(self, request):
        observacao = Observacao.objects.all()
        serializer = ObservacaoSerializer(observacao, many=True)
        return Response(serializer.data)

    def post(self, request):
        serializer = ObservacaoSerializer(data=request.data, many=True)
        serializer.is_valid(raise_exception=True)
        serializer.save()
        #return Response({"msg": "Inserido com sucesso"})
        return Response({"id": serializer.data['id']})
        # return Response(serializer.data, status=status.HTTP_201_CREATED)

def home(request):
    return render(request, 'home/index.html')

def cadAluno(request):
    if request.method != "POST":
        turma = Turma.objects.all()
        return render(request, 'home/cadAluno.html', {"dados": turma})

    nome = request.POST['nome']
    ra = request.POST['ra']
    turma = request.POST['turma']
    print(turma)

    A = Aluno()
    A.nome = nome
    A.ra = ra
    A.turma_id = turma

    A.save()
    return redirect('home')


def cadColaborador(request):
    if request.method != "POST":
        return render(request, 'home/cadColaborador.html')

    nome = request.POST['nome']
    nif = request.POST['nif']
    senha = request.POST['senha']
    nivelAcesso = request.POST['nivelAcesso']

    C = Colaborador()
    C.nome = nome
    C.nif = nif
    C.senha = senha
    C.nivelAcesso = nivelAcesso

    C.save()
    return redirect('home')


def cadTurma(request):
    if request.method != "POST":
        return render(request, 'home/cadTurma.html')

    nome = request.POST['nome']
    periodo = request.POST['periodo']

    T = Turma()
    T.nome = nome
    T.periodo = periodo

    T.save()
    return redirect('home')


def cadFiap(request):
    if request.method != "POST":
        aluno = Aluno.objects.all()
        turma = Turma.objects.all()
        colab = Colaborador.objects.order_by('-id').filter(
            nivelAcesso=1
        )
        return render(request, 'home/cadFiap.html', {"aluno": aluno, 'colabo': colab, 'turma': turma})

    aluno = Aluno()
    colaborador = Colaborador()
    turma = Turma()
    freq = Frequencia()
    obser = Observacao()
    ocorren = Ocorrencia()
    aprendizagem = Aprendizagem()
    aproveitamento = Aproveitamento()
