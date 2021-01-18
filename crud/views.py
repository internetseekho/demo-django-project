from django.shortcuts import render,redirect
from crud.forms import EmployeeForm, DeveloperForm, ManagerForm, ClientForm, ProjectForm
from crud.models import Employee, Developers, Managers, Clients, Projects

def emp(request):
	if request.method == "POST":
		form = EmployeeForm (request.POST) # here "form" is one varible
		if form.is_valid():
			try:
				form.save()
				return redirect("/show")
			except:
				pass
	else:
		form = EmployeeForm()
	return render(request,"index.html",{'form':form})

def show(request):
	employees = Employee.objects.all() # it's select query,select all data store in employees varible
	return render(request,"show.html",{'employees': employees})

def edit(request,id):
	employee = Employee.objects.get(id=id)
	return render(request,"edit.html",{'employee':employee})

def update(request,id):
	employee = Employee.objects.get(id=id)
	form = EmployeeForm(request.POST, instance=employee)
	if form.is_valid():
		form.save()
		return redirect('/show')
	return render(request,"edit.html",{'employee':employee})

def delete(request, id):
	employee = Employee.objects.get(id=id)
	employee.delete()
	return redirect("/show")

def home(request):
	return render(request,"home.html")
 
def dev(request):
	if request.method == "POST":
		form = DeveloperForm (request.POST) 
		if form.is_valid():
			try:
				form.save()
				return redirect("/developers/show")
			except:
				pass
	else:
		form = DeveloperForm()
	return render(request,"developers/index.html",{'form':form})

def dev_show(request):
	developers = Developers.objects.all() 
	return render(request,"developers/show.html",{'developers': developers})

def dev_edit(request,id):
	developer = Developers.objects.get(id=id)
	return render(request,"developers/edit.html",{'developer':developer})

def dev_update(request,id):
	developer = Developers.objects.get(id=id)
	form = DeveloperForm(request.POST, instance=developer)
	if form.is_valid():
		form.save()
		return redirect('/developers/show')
	return render(request,"developers/edit.html",{'developer':developer})

def dev_delete(request, id):
	developer = Developers.objects.get(id=id)
	developer.delete()
	return redirect("/developers/show")

def man_show(request):
	managers = Managers.objects.all() 
	return render(request, "managers/show.html",{'managers': managers})

def man(request):
	if request.method == "POST":
		form = ManagerForm (request.POST) 
		if form.is_valid():
			try:
				form.save()
				return redirect("/managers/show")
			except:
				pass
	else:
		form = ManagerForm()
	return render(request,"managers/index.html",{'form':form})

def man_edit(request,id):
	manager = Managers.objects.get(id=id)
	return render(request,"managers/edit.html",{'manager':manager})

def man_update(request,id):
	manager = Managers.objects.get(id=id)
	form = ManagerForm(request.POST, instance=manager)
	if form.is_valid():
		form.save()
		return redirect('/managers/show')
	return render(request,"managers/edit.html",{'manager':manager})

def man_delete(request, id):
	manager = Managers.objects.get(id=id)
	manager.delete()
	return redirect("/managers/show")

def cli_show(request):
	clients = Clients.objects.all() 
	return render(request, "clients/show.html",{'clients': clients})

def client(request):
	if request.method == "POST":
		form = ClientForm (request.POST)
		print(form); 
		if form.is_valid():
			try:
				form.save()
				return redirect("/clients/show")
			except:
				pass
	else:
		form = ClientForm()
	return render(request,"clients/index.html",{'form':form})

def cli_edit(request,id):
	client = Clients.objects.get(id=id)
	return render(request,"clients/edit.html",{'client':client})

def cli_update(request,id):
	client = Clients.objects.get(id=id)
	form   = ClientForm(request.POST, instance=client)
	if form.is_valid():
		form.save()
		return redirect('/clients/show')
	return render(request,"clients/edit.html",{'client':client})

def cli_delete(request, id):
	client = Clients.objects.get(id=id)
	client.delete()
	return redirect("/clients/show")

def pro_show(request):
	projects = Projects.objects.all() 
	return render(request, "projects/show.html",{'projects': projects})

def project(request):
	if request.method == "POST":
		form = ProjectForm (request.POST)
		print(form); 
		if form.is_valid():
			try:
				form.save()
				return redirect("/projects/show")
			except:
				pass
	else:
		form = ProjectForm()
	return render(request,"projects/index.html",{'form':form})

def pro_edit(request,id):
	project = Projects.objects.get(id=id)
	return render(request,"projects/edit.html",{'project':project})

def pro_update(request,id):
	project = Projects.objects.get(id=id)
	form    = ProjectForm(request.POST, instance=project)
	if form.is_valid():
		form.save()
		return redirect('/projects/show')
	return render(request,"projects/edit.html",{'project':project})

def pro_delete(request, id):
	project = Projects.objects.get(id=id)
	project.delete()
	return redirect("/projects/show")