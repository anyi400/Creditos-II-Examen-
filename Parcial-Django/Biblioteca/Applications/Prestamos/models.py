from django.db import models
from Applications.Usuario.models import Usuarios
from Applications.Libro.models import Libros

from django.urls import reverse

class Prestamos(models.Model):
  
    idLibro=models.ForeignKey(Libros, on_delete = models.CASCADE)
    idUsuario=models.ForeignKey(Usuarios, on_delete = models.CASCADE)
    fechaPrestamo=models.DateField()
    fechaDevolucion=models.DateField()
    
    def get_absolute_url(self): 
        return reverse('listar_prestamos')

    def __str__(self):
        return str(self.id) + '-' + str(self.idLibro) + '-' + str(self.idUsuario)