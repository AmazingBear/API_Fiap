import django
from django.db import models
import datetime


class Turma(models.Model):
    nome = models.CharField(max_length=50)
    periodo = models.CharField(max_length=15, default='1',
                    choices=(('1','Manhã'),
                             ('2','Tarde'),
                             ('3','Noite')))
    dataInicio = models.DateTimeField(default=datetime.datetime.now())

    def __str__(self):
        return self.nome

class Aluno(models.Model):
    nome = models.CharField(max_length=50)
    ra = models.CharField(max_length=8)
    turma = models.ForeignKey(Turma, on_delete=models.CASCADE)

    def __str__(self):
        return self.nome

class Colaborador(models.Model):
    nome = models.CharField(max_length=50)
    nif = models.CharField(max_length=11)
    senha = models.CharField(max_length=50)
    nivelAcesso = models.CharField(max_length=15, default='1',
                    choices=(('1','Professor'),
                             ('2','Analista'),
                             ('3','Coordenador')))

    def __str__(self):
        return self.nome

class Materia(models.Model):
    nome = models.CharField(max_length=50)
    professor = models.ForeignKey(Colaborador, on_delete=models.CASCADE)
    turma = models.ForeignKey(Turma, on_delete=models.CASCADE)

    def __str__(self):
        return self.nome

class Assinatura(models.Model):
    docente = models.ImageField(null=True, upload_to='docente/%y/%m/%d/')
    coordenador = models.ImageField(null=True, upload_to='coordenador/%y/%m/%d/')
    social = models.ImageField(null=True, upload_to='social/%y/%m/%d/')
    aluno = models.ImageField(null=True, upload_to='aluno/%y/%m/%d/')
    responsavel = models.ImageField(null=True, upload_to='responsavel/%y/%m/%d/')

    def __str__(self):
        return str(self.id)

class Fiap(models.Model):
    progresso = models.CharField(max_length=20, default='1',
                    choices=(('1','Iniciada'),
                             ('2','Em Análise'),
                             ('3','Finalizada')))

    aluno = models.ForeignKey(Aluno, on_delete=models.CASCADE)
    turma = models.ForeignKey(Turma, on_delete=models.CASCADE)
    dataInicio = models.DateTimeField(default=datetime.datetime.now())
    dataFinal = models.DateTimeField(null=True, default=datetime.datetime.now())
    colaborador = models.ForeignKey(Colaborador, on_delete=models.CASCADE)
    assinatura = models.ForeignKey(Assinatura,on_delete=models.CASCADE, null=True, blank=True)

    def __str__(self):
        return str(self.id)

class Frequencia(models.Model):
    aulasprevistas = models.IntegerField()
    ausencias = models.IntegerField()
    fiap = models.ForeignKey(Fiap, blank=True, on_delete=models.CASCADE)

    def __str__(self):
        return str(self.id)

class Aproveitamento(models.Model):
    materia = models.ForeignKey(Materia, blank=True, on_delete=models.CASCADE)
    notamedia = models.IntegerField()
    notaaluno = models.IntegerField()
    notarec = models.IntegerField(null=True, blank=True)
    fiap = models.ForeignKey(Fiap, blank=True, on_delete=models.CASCADE)

    def __str__(self):
        return str(self.id)

class Aprendizagem(models.Model):
    atencao = models.BooleanField(default=False, null=True, blank=True)
    compreensao = models.BooleanField(default=False, null=True, blank=True)
    comprometimento = models.BooleanField(default=False, null=True, blank=True)
    relacionamento = models.BooleanField(default=False, null=True, blank=True)
    Outros = models.CharField(max_length=100, null=True, blank=True)
    fiap = models.ForeignKey(Fiap, blank=True, on_delete=models.CASCADE)

    def __str__(self):
        return str(self.id)

class Ocorrencia(models.Model):
    advverbal = models.BooleanField(default=False, null=True, blank=True)
    advescrita = models.BooleanField(default=False, null=True, blank=True)
    afastamento = models.BooleanField(default=False, null=True, blank=True)
    cancelmatricula = models.BooleanField(default=False, null=True, blank=True)
    fiap = models.ForeignKey(Fiap, blank=True, on_delete=models.CASCADE)

    def __str__(self):
        return str(self.id)

class Observacao(models.Model):
    observacao = models.CharField(max_length=500)
    fiap = models.ForeignKey(Fiap, on_delete=models.CASCADE)
    data = models.DateTimeField(default=datetime.datetime.now())

    def __str__(self):
        return str(self.id)