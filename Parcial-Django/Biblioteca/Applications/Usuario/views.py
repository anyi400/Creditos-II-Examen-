from django.shortcuts import render, redirect
from .models import Usuarios
from django.urls import reverse_lazy

from django.views.generic import ListView, CreateView, TemplateView, UpdateView, DeleteView

class Listar_Usuarios(ListView):
    
    template_name = "usuarios/listar_usuarios.html"
    model=Usuarios
    context_object_name='lista'

class Crear_Usuario(CreateView):

    template_name="usuarios/crear_usuario.html"
    model=Usuarios
    fields=['numUsuario', 'ntf', 'nombre', 'direccion', 'telefono']

class Actualiza_Usuario(UpdateView):
    
    template_name="usuarios/actualizar_usuario.html"
    model=Usuarios
    fields=['numUsuario', 'ntf', 'nombre', 'direccion', 'telefono']

class Eliminar_Usuario(DeleteView):
    
    template_name="usuarios/eliminar_usuario.html"
    model=Usuarios
    success_url=reverse_lazy('listar_usuarios')
