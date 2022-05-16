from rest_framework import serializers
from consulta.models import Medico,Paciente,Prescripcion

class MedicoSerializer(serializers.HyperlinkedModelSerializer):
    class Meta:
        model = Medico
        fields = ['url', 'rut_med', 'nom_med']

class PacienteSerializer(serializers.HyperlinkedModelSerializer):
    class Meta:
        model = Paciente
        fields = ['url', 'rut_pac', 'nom_pac','sexo_pac','edad_pac']



class PrescripcionSerializer(serializers.HyperlinkedModelSerializer):
    class Meta:
        model = Prescripcion
        fields = ['url','id_medicamen', 'Medicamento','estado','fichaMedica']





