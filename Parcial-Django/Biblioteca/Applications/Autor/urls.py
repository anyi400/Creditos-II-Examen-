from django.contrib import admin
from django.urls import path
from.import views

urlpatterns = [

    path('listar_autores/', views.Listar_Autores.as_view(), name='listar_autores'),
    path('crear_autor/', views.Crear_Autor.as_view(), name='crear_autor'),
    path('actualizar_autor/<pk>', views.Actualiza_Autor.as_view(), name="actualizar_autor"),
    path('eliminar_autor/<pk>', views.Eliminar_Autor.as_view(), name="eliminar_autor")
    

]