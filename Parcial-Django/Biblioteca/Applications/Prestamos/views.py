from django.shortcuts import render, redirect
from .models import Prestamos
from django.urls import reverse_lazy

from django.views.generic import ListView, CreateView, TemplateView, UpdateView, DeleteView

class Listar_Prestamos(ListView):
    
    template_name = "prestamos/listar_prestamos.html"
    model=Prestamos
    context_object_name='lista'

class Crear_Prestamo(CreateView):

    template_name="prestamos/crear_prestamo.html"
    model=Prestamos
    fields=['idLibro', 'idUsuario', 'fechaPrestamo', 'fechaDevolucion']

class Actualizar_Prestamo(UpdateView):
    
    template_name="prestamos/actualizar_prestamo.html"
    model=Prestamos
    fields=['idLibro', 'idUsuario', 'fechaPrestamo', 'fechaDevolucion']

class Eliminar_Prestamo(DeleteView):
    
    template_name="prestamos/eliminar_prestamo.html"
    model=Prestamos
    success_url=reverse_lazy('listar_prestamos')
