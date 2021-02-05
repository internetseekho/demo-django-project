from django.urls import path
from gis.views import calculate_distance_view

app_name = "gis"

urlpatterns = [
    path("", calculate_distance_view, name="caluculate-view"),
]