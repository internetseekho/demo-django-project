"""web_application URL Configuration

The `urlpatterns` list routes URLs to views. For more information please see:
    https://docs.djangoproject.com/en/2.1/topics/http/urls/
Examples:
Function views
    1. Add an import:  from my_app import views
    2. Add a URL to urlpatterns:  path('', views.home, name='home')
Class-based views
    1. Add an import:  from other_app.views import Home
    2. Add a URL to urlpatterns:  path('', Home.as_view(), name='home')
Including another URLconf
    1. Import the include() function: from django.urls import include, path
    2. Add a URL to urlpatterns:  path('blog/', include('blog.urls'))
"""
from django.contrib import admin
from django.urls import path
from crud import views

urlpatterns = [
    
    path('admin/', admin.site.urls),

    path('developers/show',views.dev_show),
    path('developers/add',views.dev),
    path('developers/update/<int:id>',views.dev_update),
    path('developers/edit/<int:id>', views.dev_edit),
    path('developers/delete/<int:id>', views.dev_delete),

    path('managers/show',views.man_show),
    path('managers/add',views.man),
    path('managers/update/<int:id>',views.man_update),
    path('managers/edit/<int:id>', views.man_edit),
    path('managers/delete/<int:id>', views.man_delete),
    
    path('clients/show',views.cli_show),
    path('clients/add',views.client),
    path('clients/update/<int:id>',views.cli_update),
    path('clients/edit/<int:id>', views.cli_edit),
    path('clients/delete/<int:id>', views.cli_delete),
    
    path('projects/show',views.pro_show),
    path('projects/add',views.project),
    path('projects/update/<int:id>',views.pro_update),
    path('projects/edit/<int:id>', views.pro_edit),
    path('projects/delete/<int:id>', views.pro_delete),

    path('', views.login),
    path('login', views.login_page),
    path('logout', views.logout_page),
    path('registration', views.registration),

]
