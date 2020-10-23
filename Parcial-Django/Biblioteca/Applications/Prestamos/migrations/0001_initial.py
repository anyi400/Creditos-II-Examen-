# Generated by Django 3.1.2 on 2020-10-23 17:24

from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    initial = True

    dependencies = [
        ('Usuario', '0001_initial'),
        ('Libro', '0001_initial'),
    ]

    operations = [
        migrations.CreateModel(
            name='Prestamos',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('fechaPrestamo', models.DateTimeField()),
                ('fechaDevolucion', models.DateTimeField()),
                ('idLibro', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='Libro.libros')),
                ('idUsuario', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='Usuario.usuarios')),
            ],
        ),
    ]
