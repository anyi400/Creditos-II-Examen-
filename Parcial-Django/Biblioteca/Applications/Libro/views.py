from django.shortcuts import render, redirect
from .models import Libros
from django.urls import reverse_lazy

from django.views.generic import ListView, CreateView, TemplateView, UpdateView, DeleteView

class Listar_Libros(ListView):
    
    template_name = "libros/listar_libros.html"
    model=Libros
    context_object_name='lista'

class Crear_Libro(CreateView):

    template_name="libros/crear_libro.html"
    model=Libros
    fields=['codigo', 'titulo', 'isbn', 'editorial', 'numPags']

class Actualiza_Libro(UpdateView):
    
    template_name="libros/actualizar_libro.html"
    model=Libros
    fields=['codigo', 'titulo', 'isbn', 'editorial', 'numPags']

class Eliminar_Libro(DeleteView):
    
    template_name="libros/eliminar_libro.html"
    model=Libros
    success_url=reverse_lazy('listar_libros')



