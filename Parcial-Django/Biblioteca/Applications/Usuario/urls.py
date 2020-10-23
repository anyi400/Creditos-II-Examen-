from django.contrib import admin
from django.urls import path
from.import views

urlpatterns = [

    path('listar_usuarios/', views.Listar_Usuarios.as_view(), name='listar_usuarios'),
    path('crear_usuario/', views.Crear_Usuario.as_view(), name='crear_usuario'),
    path('actualizar_usuario/<pk>', views.Actualiza_Usuario.as_view(), name="actualizar_usuario"),
    path('eliminar_usuario/<pk>', views.Eliminar_Usuario.as_view(), name="eliminar_usuario")
    

]