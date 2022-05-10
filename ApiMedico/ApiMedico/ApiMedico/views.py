from django.contrib.auth.models import User, Group
from rest_framework import viewsets
from rest_framework import permissions
from consulta.models import Medico,Paciente,FichaMedica,Prescripcion
from ApiMedico.serializers import UserSerializer, GroupSerializer,MedicoSerializer,PacienteSerializer,FichaMedicaSerializer,PrescripcionSerializer


class UserViewSet(viewsets.ModelViewSet):
    """
    API endpoint that allows users to be viewed or edited.
    """
    queryset = User.objects.all().order_by('-date_joined')
    serializer_class = UserSerializer

class GroupViewSet(viewsets.ModelViewSet):
    """
    API endpoint that allows groups to be viewed or edited.
    """
    queryset = Group.objects.all()
    serializer_class = GroupSerializer

class MedicoViewSet(viewsets.ModelViewSet):
    """
    API endpoint that allows groups to be viewed or edited.
    """
    queryset = Medico.objects.all()
    serializer_class = MedicoSerializer

class PacienteViewSet(viewsets.ModelViewSet):
    """
    API endpoint that allows groups to be viewed or edited.
    """
    queryset = Paciente.objects.all()
    serializer_class = PacienteSerializer



class FichaMedicaViewSet(viewsets.ModelViewSet):
    """
    API endpoint that allows groups to be viewed or edited.
    """
    queryset = FichaMedica.objects.all()
    serializer_class = FichaMedicaSerializer


class PrescripcionViewSet(viewsets.ModelViewSet):
    """
    API endpoint that allows groups to be viewed or edited.
    """
    queryset = Prescripcion.objects.all()
    serializer_class = PrescripcionSerializer