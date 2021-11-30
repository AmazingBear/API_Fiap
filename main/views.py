from django.shortcuts import render, redirect
from .models import Aluno, Usuario, Turma, Fiap, Materia, Frequencia, Assinatura, Observacao, Ocorrencia, \
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
        return Response({"msg": "Inserido com sucesso"})
        #return Response({"id": serializer.data['id']})
        # return Response(serializer.data, status=status.HTTP_201_

    def put(self, request, pk=''):
        turma = Turma.objects.get(id=pk)
        serializer = TurmaSerializer(turma, data=request.data)
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

    def get(self, request, pk=''):
        if pk == '':
            aluno = Aluno.objects.all()
            serializer = AlunoSerializer(aluno, many=True)
            return Response(serializer.data)
        else:
            aluno = Aluno.objects.get(id=pk)
            serializer = AlunoSerializer(aluno)
            return Response(serializer.data)


    def post(self, request):
        serializer = AlunoSerializer(data=request.data, many=True)
        serializer.is_valid(raise_exception=True)
        serializer.save()
        return Response({"msg": "Inserido com sucesso"})
        #return Response({"id": serializer.data['id']})
        # return Response(serializer.data, status=status.HTTP_201_

    def put(self, request, pk=''):
        aluno = Aluno.objects.get(id=pk)
        serializer = AlunoSerializer(aluno, data=request.data)
        serializer.is_valid(raise_exception=True)
        serializer.save()
        return Response(serializer.data)

    def delete(self, request, pk=''):
        aluno = Aluno.objects.get(id=pk)
        aluno.delete()
        return Response('Aluno Apagado')

class ColaboradorAPIView(APIView):
    """
    API Colaborador
    """

    def get(self, request, pk=''):
        if pk == '':
            colab = Usuario.objects.all()
            serializer = UsuarioSerializer(colab, many=True)
            return Response(serializer.data)
        else:
            colab = Usuario.objects.get(id=pk)
            serializer = UsuarioSerializer(colab)
            return Response(serializer.data)


    def post(self, request):
        serializer = UsuarioSerializer(data=request.data, many=True)
        serializer.is_valid(raise_exception=True)
        serializer.save()
        return Response({"msg": "Inserido com sucesso"})
        #return Response({"id": serializer.data['id']})
        # return Response(serializer.data, status=status.HTTP_201_

    def put(self, request, pk=''):
        colab = Usuario.objects.get(id=pk)
        serializer = UsuarioSerializer(colab, data=request.data)
        serializer.is_valid(raise_exception=True)
        serializer.save()
        return Response(serializer.data)

    def delete(self, request, pk=''):
        colab = Usuario.objects.get(id=pk)
        colab.delete()
        return Response('Colaborador Apagado')

class MateriaAPIView(APIView):
    """
    API Materia
    """

    def get(self, request, pk=''):
        if pk == '':
            materia = Materia.objects.all()
            serializer = MateriaSerializer(materia, many=True)
            return Response(serializer.data)
        else:
            materia = Materia.objects.get(id=pk)
            serializer = MateriaSerializer(materia)
            return Response(serializer.data)


    def post(self, request):
        serializer = MateriaSerializer(data=request.data, many=True)
        serializer.is_valid(raise_exception=True)
        serializer.save()
        return Response({"msg": "Inserido com sucesso"})
        #return Response({"id": serializer.data['id']})
        # return Response(serializer.data, status=status.HTTP_201_

    def put(self, request, pk=''):
        materia = Materia.objects.get(id=pk)
        serializer = MateriaSerializer(materia, data=request.data)
        serializer.is_valid(raise_exception=True)
        serializer.save()
        return Response(serializer.data)

    def delete(self, request, pk=''):
        materia = Materia.objects.get(id=pk)
        materia.delete()
        return Response('Materia Apagada')

class AssinaturaAPIView(APIView):
    """
    API Assinatura
    """

    def get(self, request, pk=''):
        if pk == '':
            assinatura = Assinatura.objects.all()
            serializer = AssinaturaSerializer(assinatura, many=True)
            return Response(serializer.data)
        else:
            assinatura = Assinatura.objects.get(fiap=pk)
            serializer = AssinaturaSerializer(assinatura)
            return Response(serializer.data)


    def post(self, request):
        serializer = AssinaturaSerializer(data=request.data, many=True)
        serializer.is_valid(raise_exception=True)
        serializer.save()
        return Response({"msg": "Inserido com sucesso"})
        #return Response({"id": serializer.data['id']})
        # return Response(serializer.data, status=status.HTTP_201_

    def put(self, request, pk=''):
        assinatura = Assinatura.objects.get(id=pk)
        serializer = AssinaturaSerializer(assinatura, data=request.data)
        serializer.is_valid(raise_exception=True)
        serializer.save()
        return Response(serializer.data)

    def delete(self, request, pk=''):
        assinatura = Assinatura.objects.get(id=pk)
        assinatura.delete()
        return Response('Assinatura Apagada')

class FiapAPIView(APIView):
    """
    API Fiap
    """

    def get(self, request, pk=''):
        if pk == '':
            fiap = Fiap.objects.all()
            serializer = FiapSerializer(fiap, many=True)
            return Response(serializer.data)
        else:
            fiap = Fiap.objects.get(id=pk)
            serializer = FiapSerializer(fiap)
            return Response(serializer.data)


    def post(self, request):
        serializer = FiapSerializer(data=request.data, many=True)
        serializer.is_valid(raise_exception=True)
        serializer.save()
        return Response({"msg": "Inserido com sucesso"})
        #return Response({"id": serializer.data['id']})
        # return Response(serializer.data, status=status.HTTP_201_

    def put(self, request, pk=''):
        fiap = Fiap.objects.get(id=pk)
        serializer = FiapSerializer(fiap, data=request.data)
        serializer.is_valid(raise_exception=True)
        serializer.save()
        return Response(serializer.data)

    def delete(self, request, pk=''):
        fiap = Fiap.objects.get(id=pk)
        fiap.delete()
        return Response('Fiap Apagada')

class FrequenciaAPIView(APIView):
    """
    API Frequencia
    """

    def get(self, request, pk=''):
        if pk == '':
            frequencia = Frequencia.objects.all()
            serializer = FrequenciaSerializer(frequencia, many=True)
            return Response(serializer.data)
        else:
            frequencia = Frequencia.objects.get(fiap=pk)
            serializer = FrequenciaSerializer(frequencia)
            return Response(serializer.data)


    def post(self, request):
        fiap = Fiap.objects.latest('id')
        request.data[0]['fiap'] = fiap.id
        serializer = FrequenciaSerializer(data=request.data, many=True)
        serializer.is_valid(raise_exception=True)
        serializer.save()
        return Response({"msg": "Inserido com sucesso"})
        #return Response({"id": serializer.data['id']})
        # return Response(serializer.data, status=status.HTTP_201_

    def put(self, request, pk=''):
        frequencia = Frequencia.objects.get(id=pk)
        serializer = FrequenciaSerializer(frequencia, data=request.data)
        serializer.is_valid(raise_exception=True)
        serializer.save()
        return Response(serializer.data)

    def delete(self, request, pk=''):
        frequencia = Frequencia.objects.get(id=pk)
        frequencia.delete()
        return Response('Frequencia Apagada')

class AproveitamentoAPIView(APIView):
    """
    API Aproveitamento
    """

    def get(self, request, pk=''):
        if pk == '':
            aproveitamento = Aproveitamento.objects.all()
            serializer = AproveitamentoSerializer(aproveitamento, many=True)
            return Response(serializer.data)
        else:
            aproveitamento = Aproveitamento.objects.get(fiap=pk)
            serializer = AproveitamentoSerializer(aproveitamento)
            return Response(serializer.data)


    def post(self, request):
        fiap = Fiap.objects.latest('id')
        request.data[0]['fiap'] = fiap.id
        serializer = AproveitamentoSerializer(data=request.data, many=True)
        serializer.is_valid(raise_exception=True)
        serializer.save()
        return Response({"msg": "Inserido com sucesso"})
        #return Response({"id": serializer.data['id']})
        # return Response(serializer.data, status=status.HTTP_201_

    def put(self, request, pk=''):
        aproveitamento = Aproveitamento.objects.get(id=pk)
        serializer = AproveitamentoSerializer(aproveitamento, data=request.data)
        serializer.is_valid(raise_exception=True)
        serializer.save()
        return Response(serializer.data)

    def delete(self, request, pk=''):
        aproveitamento = Aproveitamento.objects.get(id=pk)
        aproveitamento.delete()
        return Response('Aproveitamento Apagado')

class AprendizagemAPIView(APIView):
    """
    API Aprendizagem
    """

    def get(self, request, pk=''):
        if pk == '':
            aprendi = Aprendizagem.objects.all()
            serializer = AprendizagemSerializer(aprendi, many=True)
            return Response(serializer.data)
        else:
            aprendi = Aprendizagem.objects.get(fiap=pk)
            serializer = AprendizagemSerializer(aprendi)
            return Response(serializer.data)


    def post(self, request):
        fiap = Fiap.objects.latest('id')
        request.data[0]['fiap'] = fiap.id
        serializer = AprendizagemSerializer(data=request.data, many=True)
        serializer.is_valid(raise_exception=True)
        serializer.save()
        return Response({"msg": "Inserido com sucesso"})
        #return Response({"id": serializer.data['id']})
        # return Response(serializer.data, status=status.HTTP_201_

    def put(self, request, pk=''):
        aprendi = Aprendizagem.objects.get(id=pk)
        serializer = AprendizagemSerializer(aprendi, data=request.data)
        serializer.is_valid(raise_exception=True)
        serializer.save()
        return Response(serializer.data)

    def delete(self, request, pk=''):
        aprendi = Aprendizagem.objects.get(id=pk)
        aprendi.delete()
        return Response('Aprendizagem Apagada')

class OcorrenciaAPIView(APIView):
    """
    API Ocorrencia
    """

    def get(self, request, pk=''):
        if pk == '':
            ocorrencia = Ocorrencia.objects.all()
            serializer = OcorrenciaSerializer(ocorrencia, many=True)
            return Response(serializer.data)
        else:
            ocorrencia = Ocorrencia.objects.get(fiap=pk)
            serializer = OcorrenciaSerializer(ocorrencia)
            return Response(serializer.data)


    def post(self, request):
        fiap = Fiap.objects.latest('id')
        request.data[0]['fiap'] = fiap.id
        serializer = OcorrenciaSerializer(data=request.data, many=True)
        serializer.is_valid(raise_exception=True)
        serializer.save()
        return Response({"msg": "Inserido com sucesso"})
        #return Response({"id": serializer.data['id']})
        # return Response(serializer.data, status=status.HTTP_201_

    def put(self, request, pk=''):
        ocorrencia = Ocorrencia.objects.get(id=pk)
        serializer = OcorrenciaSerializer(ocorrencia, data=request.data)
        serializer.is_valid(raise_exception=True)
        serializer.save()
        return Response(serializer.data)

    def delete(self, request, pk=''):
        ocorrencia = Ocorrencia.objects.get(id=pk)
        ocorrencia.delete()
        return Response('Ocorrencia Apagada')

class ObservacaoAPIView(APIView):
    """
    API Observacao
    """

    def get(self, request, pk=''):
        if pk == '':
            observa = Observacao.objects.all()
            serializer = ObservacaoSerializer(observa, many=True)
            return Response(serializer.data)
        else:
            observa = Observacao.objects.get(fiap=pk)
            serializer = ObservacaoSerializer(observa)
            return Response(serializer.data)


    def post(self, request):
        fiap = Fiap.objects.latest('id')
        request.data[0]['fiap'] = fiap.id
        serializer = ObservacaoSerializer(data=request.data, many=True)
        serializer.is_valid(raise_exception=True)
        serializer.save()
        return Response({"msg": "Inserido com sucesso"})
        #return Response({"id": serializer.data['id']})
        # return Response(serializer.data, status=status.HTTP_201_

    def put(self, request, pk=''):
        observa = Observacao.objects.get(id=pk)
        serializer = ObservacaoSerializer(observa, data=request.data)
        serializer.is_valid(raise_exception=True)
        serializer.save()
        return Response(serializer.data)

    def delete(self, request, pk=''):
        observa = Observacao.objects.get(id=pk)
        observa.delete()
        return Response('Observacao Apagada')





















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
