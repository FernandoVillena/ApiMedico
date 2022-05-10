from django.db import models


class Medico(models.Model):
    rut_med = models.CharField(max_length=100, primary_key=True)
    nom_med = models.CharField(max_length=100)
    def __str__(self):
        return self.rut_med



class Paciente(models.Model):
    rut_pac = models.CharField(max_length=100, primary_key=True)
    nom_pac = models.CharField(max_length=100)
    sexo_pac = models.CharField(max_length=10)
    edad_pac = models.DateTimeField('date published')
    def __str__(self):
        return self.rut_pac
    

class FichaMedica(models.Model):
    
    Medico = models.ForeignKey(Medico, on_delete= models.CASCADE)
    Paciente = models.ForeignKey(Paciente, on_delete= models.CASCADE)
    observaciones = models.CharField(max_length=100)


class Prescripcion(models.Model):
    FichaMedica = models.ForeignKey(FichaMedica, on_delete= models.CASCADE)
    id_medicamen= models.IntegerField()
    Medicamento= models.CharField(max_length=100)
    estado = models.CharField(max_length=20)








