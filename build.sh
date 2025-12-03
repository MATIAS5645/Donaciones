#!/usr/bin/env bash
# Salir si hay error
set -o errexit

pip install -r requirements.txt

# Recopilar archivos estáticos (CSS/JS)
python manage.py collectstatic --no-input

# Ejecutar migraciones en la base de datos remota
python manage.py migrate