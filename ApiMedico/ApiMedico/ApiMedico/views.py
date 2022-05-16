from rest_framework import viewsets
from consulta.models import Medico,Paciente,FichaMedica,Prescripcion
from ApiMedico.serializers import MedicoSerializer,PacienteSerializer,PrescripcionSerializer
from ApiMedico.ficha import FichaMedicaSerializer

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


