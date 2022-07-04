from django.db import models
from ApiMedico.utils import validador_pendiente_entregado 


class Medico(models.Model):
    rut_med = models.CharField(max_length=100, primary_key=True)
    nom_med = models.CharField(max_length=100)
    def __str__(self):
        return self.rut_med



class Paciente(models.Model):
    rut_pac = models.CharField(max_length=100, primary_key=True)
    nom_pac = models.CharField(max_length=100)
    sexo_pac = models.CharField(max_length=10)
    edad_pac = models.DateField('date published')
    def __str__(self):
        return self.rut_pac
    

class FichaMedica(models.Model):
    
    Medico = models.ForeignKey(Medico, on_delete= models.CASCADE)
    paciente = models.ForeignKey(Paciente,on_delete= models.CASCADE)
    observaciones = models.CharField(max_length=100)
    


class Prescripcion(models.Model):
    fichaMedica = models.ForeignKey(FichaMedica, related_name='prescripciones', on_delete= models.CASCADE)
    id_medicamen= models.IntegerField()
    Medicamento= models.CharField(max_length=100)
    estado = models.CharField(max_length=20, validators=[validador_pendiente_entregado])
    











