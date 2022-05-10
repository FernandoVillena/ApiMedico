from django.contrib.auth.models import User, Group
from rest_framework import serializers
from consulta.models import Medico,Paciente,FichaMedica,Prescripcion


class UserSerializer(serializers.HyperlinkedModelSerializer):
    class Meta:
        model = User
        fields = ['url', 'username', 'email', 'groups']


class GroupSerializer(serializers.HyperlinkedModelSerializer):
    class Meta:
        model = Group
        fields = ['url', 'name']


class MedicoSerializer(serializers.HyperlinkedModelSerializer):
    class Meta:
        model = Medico
        fields = ['url', 'rut_med', 'nom_med']

class PacienteSerializer(serializers.HyperlinkedModelSerializer):
    class Meta:
        model = Paciente
        fields = ['url', 'rut_pac', 'nom_pac','sexo_pac','edad_pac']

        
class FichaMedicaSerializer(serializers.HyperlinkedModelSerializer):
    class Meta:
        model = FichaMedica
        fields = ['url','id','Medico', 'Paciente','observaciones']


class PrescripcionSerializer(serializers.HyperlinkedModelSerializer):
    class Meta:
        model = Prescripcion
        fields = ['url','id','FichaMedica','id_medicamen', 'Medicamento','estado']