from rest_framework import serializers

from ApiMedico.serializers import PrescripcionSerializer,PacienteSerializer,MedicoSerializer
from consulta.models import FichaMedica

class FichaMedicaSerializer(serializers.ModelSerializer):
    prescripciones = PrescripcionSerializer(many=True,read_only=True)
    paciente = PacienteSerializer(read_only=True)
    Medico = MedicoSerializer(read_only=True)


    class Meta:
        model = FichaMedica
        fields = ['url','id','Medico','paciente','observaciones','prescripciones']