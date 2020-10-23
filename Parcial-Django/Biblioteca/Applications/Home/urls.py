from django.contrib import admin
from django.urls import path
from.import views


urlpatterns = [

    path('Home/', views.Home_View.as_view(), name='home'), # clase PruebaView del archivo views.py
]