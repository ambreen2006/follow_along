# Overview

Notes from the RealPython Django tutorial.
  
# Structure of a Django Website
  
Separate apps are orgnanized into a single project (a Django website) and each app handles a self contained function.

Django app supports MVC but Django handles the controller part itself.

The pattern Django utilizes is called the Model-View-Template (MVT) pattern.

# Installation

$ pip install Django

# Create a Django Project

django-admin startproject <project-name>

# Create a Django Application

python manage.py startapp <app-name>

Inside the `settings.py` project, add the application to `INSTALLED_APP` list.

## Views

Views are inside views.py in the app directory. Each function handles the logic for different URLs.

e.g.

`
def hello_world(request):
    return render(request, 'hello_world.html', {})
`

# Run Server

`python manage.py runserver`

# Create Model

Create new classes for the model in models.py

`class NewModelName(model.Model):
    attribute = models.FieldType(..)
`

## Migrations

Migration is a file containing a Migration class

`python manage.py makemigrations <project-name>`

Once the migration file is created, migration needs to be applied so the database gets created.

`python manage.py migrate projects`

