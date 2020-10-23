from django.db import models

from django.urls import reverse

# Create your models here.
class Usuarios(models.Model):

    numUsuario=models.IntegerField()
    ntf=models.CharField(max_length=20)
    nombre=models.CharField(max_length=100)
    direccion=models.CharField(max_length=255)
    telefono=models.CharField(max_length=20)
    

    def get_absolute_url(self): 
        return reverse('listar_usuarios')

    def __str__(self):
        return self.ntf

