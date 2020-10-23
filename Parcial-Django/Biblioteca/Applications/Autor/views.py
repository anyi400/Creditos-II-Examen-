from django.shortcuts import render, redirect
from .models import Autores
from django.urls import reverse_lazy

from django.views.generic import ListView, CreateView, TemplateView, UpdateView, DeleteView

class Listar_Autores(ListView):
    
    template_name = "autores/listar_autores.html"
    model=Autores
    context_object_name='lista'

class Crear_Autor(CreateView):

    template_name="autores/crear_autor.html"
    model=Autores
    fields=['nombre', 'nacionalidad']

class Actualiza_Autor(UpdateView):
    
    template_name="autores/actualizar_autor.html"
    model=Autores
    fields=['nombre', 'nacionalidad']

class Eliminar_Autor(DeleteView):
    
    template_name="autores/eliminar_autor.html"
    model=Autores
    success_url=reverse_lazy('listar_autores')


