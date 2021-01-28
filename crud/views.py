from django.shortcuts import render, redirect
from django.contrib.auth.forms import UserCreationForm
from django.contrib.auth import authenticate, login, logout
from django.contrib import messages
from crud.forms import EmployeeForm, DeveloperForm, ManagerForm, ClientForm, ProjectForm, CreateUserForm
from crud.models import Employee, Developers, Managers, Clients, Projects, Openaq
from django.contrib.auth.decorators import login_required
from django.http import JsonResponse
import json
import requests

def login_page(request):
	if request.user.is_authenticated:
		return redirect("developers/show")
	if request.method == 'POST':
		username = request.POST.get("username")
		password = request.POST.get("password")
		user     = authenticate(request, username=username, password=password)
		if user is not None:
			login(request, user)
			return redirect("/developers/show")
		else:
			messages.info(request, "The Username or Password was incorrect")
	context = {}
	return render(request,"login.html")

def logout_page (request) :
	logout(request)
	return redirect("/login")

def registration(request):
	if request.user.is_authenticated:
		return redirect("developers/show")
	form = CreateUserForm()

	if request.method == 'POST':
		form = CreateUserForm(request.POST)
		if form.is_valid():
			form.save()
			user = form.cleaned_data.get("username")
			messages.success(request, "Account was successfully created for " + user)
			return redirect("/login")

	context = { "form" : form }
	return render(request,"registration.html", context)
 
@login_required(login_url="/login")
def dev(request):
	if request.method == "POST":
		form = DeveloperForm (request.POST) 
		if form.is_valid():
			try:
				form.save()
				messages.success(request, "Developer Successfully Added")
				return redirect("/developers/show")
			except:
				messages.success(request, "Sorry there was some problem please try again")
				pass
	else:
		form = DeveloperForm()
	return render(request,"developers/index.html",{'form':form})

@login_required(login_url="/login")
def dev_show(request):
	developers = Developers.objects.all() 
	return render(request,"developers/show.html",{'developers': developers})

@login_required(login_url="/login")
def dev_edit(request,id):
	developer = Developers.objects.get(id=id)
	return render(request,"developers/edit.html",{'developer':developer})

@login_required(login_url="/login")
def dev_update(request,id):
	developer = Developers.objects.get(id=id)
	form = DeveloperForm(request.POST, instance=developer)
	if form.is_valid():
		form.save()
		messages.success(request, "Developer Update successfully")
		return redirect('/developers/show')
	return render(request,"developers/edit.html",{'developer':developer})

@login_required(login_url="/login")
def dev_delete(request, id):
	developer = Developers.objects.get(id=id)
	developer.delete()
	messages.success(request, "Developer Deleted successfully")
	return redirect("/developers/show")

@login_required(login_url="/login")
def man_show(request):
	managers = Managers.objects.all() 
	return render(request, "managers/show.html",{'managers': managers})

@login_required(login_url="/login")
def man(request):
	if request.method == "POST":
		form = ManagerForm (request.POST) 
		if form.is_valid():
			try:
				form.save()
				messages.success(request, "Manager Successfully Added")
				return redirect("/managers/show")
			except:
				messages.success(request, "Sorry there was some problem please try again")
				pass
	else:
		form = ManagerForm()
	return render(request,"managers/index.html",{'form':form})

@login_required(login_url="/login")
def man_edit(request,id):
	manager = Managers.objects.get(id=id)
	return render(request,"managers/edit.html",{'manager':manager})

@login_required(login_url="/login")
def man_update(request,id):
	manager = Managers.objects.get(id=id)
	form = ManagerForm(request.POST, instance=manager)
	if form.is_valid():
		form.save()
		messages.success(request, "Manager Update successfully")
		return redirect('/managers/show')
	return render(request,"managers/edit.html",{'manager':manager})

@login_required(login_url="/login")
def man_delete(request, id):
	manager = Managers.objects.get(id=id)
	manager.delete()
	messages.success(request, "Manager Deleted successfully")
	return redirect("/managers/show")

@login_required(login_url="/login")
def cli_show(request):
	clients = Clients.objects.all() 
	return render(request, "clients/show.html",{'clients': clients})

@login_required(login_url="/login")
def client(request):
	if request.method == "POST":
		form = ClientForm (request.POST)
		if form.is_valid():
			try:
				form.save()
				messages.success(request, "Client Successfully Added")
				return redirect("/clients/show")
			except:
				messages.success(request, "Sorry there was some problem please try again")
				pass
	else:
		form = ClientForm()
	return render(request,"clients/index.html",{'form':form})

@login_required(login_url="/login")
def cli_edit(request,id):
	client = Clients.objects.get(id=id)
	return render(request,"clients/edit.html",{'client':client})

@login_required(login_url="/login")
def cli_update(request,id):
	client = Clients.objects.get(id=id)
	form   = ClientForm(request.POST, instance=client)
	if form.is_valid():
		form.save()
		messages.success(request, "Client Update successfully")
		return redirect('/clients/show')
	return render(request,"clients/edit.html",{'client':client})

@login_required(login_url="/login")
def cli_delete(request, id):
	client = Clients.objects.get(id=id)
	client.delete()
	messages.success(request, "Client Deleted successfully")
	return redirect("/clients/show")

@login_required(login_url="/login")
def pro_show(request):
	projects = Projects.objects.all()
	return render(request, "projects/show.html",{'projects': projects})

@login_required(login_url="/login")
def project(request):
	if request.method == "POST":
		form = ProjectForm (request.POST)
		if form.is_valid():
			try:
				form.save()
				messages.success(request, "Project Successfully Added")
				return redirect("/projects/show")
			except:
				messages.success(request, "Sorry there was some problem please try again")
				pass
	else:
		form       = ProjectForm()
	clients    = Clients.objects.all() 
	developers = Developers.objects.all()
	managers   = Managers.objects.all() 
	return render(request,"projects/index.html",{'clients':clients, 'form':form, 'developers': developers, "managers": managers})

@login_required(login_url="/login")
def pro_edit(request,id):
	project    = Projects.objects.get(id=id)
	clients    = Clients.objects.all() 
	developers = Developers.objects.all()
	managers   = Managers.objects.all() 
	return render(request,"projects/edit.html",{'project':project, 'clients':clients, 'developers': developers, "managers": managers})

@login_required(login_url="/login")
def pro_update(request,id):
	project = Projects.objects.get(id=id)
	form    = ProjectForm(request.POST, instance=project)
	if form.is_valid():
		form.save()
		messages.success(request, "Project Update successfully")
		return redirect('/projects/show')
	return render(request,"projects/edit.html",{'project':project})

@login_required(login_url="/login")
def pro_delete(request, id):
	project = Projects.objects.get(id=id)
	project.delete()
	messages.success(request, "Project Deleted successfully")
	return redirect("/projects/show")

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