from rest_framework import serializers

def validador_pendiente_entregado(value):
    if value.upper() == "PENDIENTE" or value.upper() == "ENTREGADO" :
        return value
    else:
        raise serializers.ValidationError('Ingrese un estado correcto')
        