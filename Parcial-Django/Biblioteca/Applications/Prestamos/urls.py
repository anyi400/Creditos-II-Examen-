from django.contrib import admin
from django.urls import path
from.import views

urlpatterns = [

    path('listar_prestamos/', views.Listar_Prestamos.as_view(), name='listar_prestamos'),
    path('crear_prestamo/', views.Crear_Prestamo.as_view(), name='crear_prestamo'),
    path('actualizar_prestamo/<pk>', views.Actualizar_Prestamo.as_view(), name="actualizar_prestamo"),
    path('eliminar_prestamo/<pk>', views.Eliminar_Prestamo.as_view(), name="eliminar_prestamo")
    

]