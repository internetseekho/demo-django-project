from django.shortcuts import render, redirect
from crud.models import Openaq, Airnow
import requests
from django.http import JsonResponse

def openaq(request):
	return render(request,"openaq/index.html",{'openaq':openaq})

def markers(request):
	openaq = Openaq.objects.all()
	dic    = {}
	for opena in openaq:
		dic[opena.id] = {"lat" : opena.latitude, "lng" : opena.longitude, "countsByMeasurement" : opena.countsByMeasurement }
	return JsonResponse(dic, status=200)

def openaq_add(request):
	url            = "https://api.openaq.org/v1/locations?limit=5&page=1"
	response       = requests.get(url)
	if response.status_code == 200:
		parseddata = response.json()
		for parsed in parseddata["results"]:
			openaq                     = Openaq()
			openaq.p_id                = parsed['id']
			openaq.country             = parsed['country']
			openaq.city                = parsed['city']
			openaq.cities              = parsed['cities']
			openaq.location            = parsed['location']
			openaq.locations           = parsed['locations']
			openaq.sourceName          = parsed['sourceName']
			openaq.sourceNames         = parsed['sourceNames']
			openaq.sourceType          = parsed['sourceType']
			openaq.sourceTypes         = parsed['sourceTypes']
			openaq.longitude           = parsed['coordinates']['longitude']
			openaq.latitude            = parsed['coordinates']['latitude']
			openaq.firstUpdated        = parsed['firstUpdated']
			openaq.lastUpdated         = parsed['lastUpdated']
			openaq.parameters          = parsed['parameters']
			openaq.countsByMeasurement = parsed['countsByMeasurement']
			openaq.count               = parsed['count']
			openaq.save()
	return render(request, "openaq/add.html", { "response_code" : response.status_code })


def airnow(request):
	return render(request,"airnow/index.html",{'openaq':openaq})

def markers_airnow(request):
	airnow = Airnow.objects.all()
	dic    = {}
	for airno in airnow:
		dic[airno.id] = {
			"lat" : airno.Latitude, 
			"lng" : airno.Longitude, 
			"DateIssue" : airno.DateIssue, 
			"DateForecast" : airno.DateForecast, 
			"ReportingArea" : airno.ReportingArea, 
			"StateCode" : airno.StateCode, 
			"ParameterName" : airno.ParameterName, 
			"AQI" : airno.AQI 
		}
	return JsonResponse(dic, status=200)