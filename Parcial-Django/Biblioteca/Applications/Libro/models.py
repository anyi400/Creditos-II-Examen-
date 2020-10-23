from django.db import models
from django.urls import reverse

# Create your models here.
class Libros(models.Model):

    codigo=models.IntegerField()
    titulo=models.CharField(max_length=100)
    isbn=models.CharField(max_length=30)
    editorial=models.CharField(max_length=60)
    numPags=models.IntegerField()

    def get_absolute_url(self): 
        return reverse('listar_libros')

    def __str__(self):
        return self.titulo
