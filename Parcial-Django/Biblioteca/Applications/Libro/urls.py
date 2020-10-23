from django.contrib import admin
from django.urls import path
from.import views

urlpatterns = [

    path('listar_libros/', views.Listar_Libros.as_view(), name='listar_libros'),
    path('crear_libro/', views.Crear_Libro.as_view(), name='crear_libro'),
    path('actualizar_libro/<pk>', views.Actualiza_Libro.as_view(), name="actualizar_libro"),
    path('eliminar_libro/<pk>', views.Eliminar_Libro.as_view(), name="eliminar_libro")
    

]