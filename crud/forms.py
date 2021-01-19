from django import forms
from django.contrib.auth.forms import UserCreationForm
from django.contrib.auth.models import User
from crud.models import Employee, Developers, Managers, Clients, Projects

class EmployeeForm(forms.ModelForm):
	class Meta:
		model = Employee
		fields = "__all__"

class DeveloperForm(forms.ModelForm):
	class Meta:
		model = Developers
		fields = "__all__"

class ManagerForm(forms.ModelForm):
	class Meta:
		model = Managers
		fields = "__all__"

class ClientForm(forms.ModelForm):
	class Meta:
		model = Clients
		fields = "__all__"

class ProjectForm(forms.ModelForm):
	class Meta:
		model = Projects
		fields = "__all__"

class CreateUserForm(UserCreationForm):
	class Meta:
		model  = User
		fields = ["username", "email", "password1", "password2"]
