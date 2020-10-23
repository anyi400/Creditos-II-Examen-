from django.db import models
from django.urls import reverse

# Create your models here.
class Autores(models.Model):
  
    nombre=models.CharField(max_length=100)
    nacionalidad=models.CharField(max_length=50)
    

    def get_absolute_url(self): 
        return reverse('listar_autores')

    def __str__(self):
        return self.nombre