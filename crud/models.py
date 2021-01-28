from django.db import models

class Employee(models.Model):
	eid = models.CharField(max_length=10)
	ename = models.CharField(max_length=50)
	eemail = models.EmailField()
	econtact = models.CharField(max_length=10)

	class Meta:
		db_table = "employee"

	def __str__(self):
		return self.ename

class Developers(models.Model):
	did = models.CharField(max_length=10)
	dname = models.CharField(max_length=250)
	demail = models.EmailField(max_length=100)
	dcontact = models.CharField(max_length=30)

	class Meta:
		db_table = "developers"

	def __str__(self):
		return self.dname

class Managers(models.Model):
	mid = models.CharField(max_length=10)
	mname = models.CharField(max_length=250)
	memail = models.EmailField(max_length=100)
	mcontact = models.CharField(max_length=30)

	class Meta:
		db_table = "managers"

	def __str__(self):
		return self.mname

class Clients(models.Model):
	cid = models.CharField(max_length=10)
	cname = models.CharField(max_length=250)
	cemail = models.EmailField(max_length=100)
	ccontact = models.CharField(max_length=30)

	class Meta:
		db_table = "clients"

	def __str__(self):
		return self.cname

class Projects(models.Model):
	pname     = models.CharField(max_length=250)
	client    = models.ForeignKey(Clients, on_delete=models.CASCADE)
	manager   = models.ForeignKey(Managers, on_delete=models.CASCADE)
	developer = models.ForeignKey(Developers, on_delete=models.CASCADE)

	class Meta:
		db_table = "projects"

	def __str__(self):
		return self.pname

class Openaq(models.Model):
	p_id                = models.CharField(max_length=255)
	country             = models.CharField(max_length=255)
	city                = models.CharField(max_length=255)
	cities              = models.CharField(max_length=500)
	location            = models.CharField(max_length=255)
	locations           = models.CharField(max_length=255)
	sourceName          = models.CharField(max_length=255)
	sourceNames         = models.CharField(max_length=255)
	sourceType          = models.CharField(max_length=255)
	sourceTypes         = models.CharField(max_length=255)
	longitude           = models.CharField(max_length=255)
	latitude            = models.CharField(max_length=255)
	firstUpdated        = models.CharField(max_length=255)
	lastUpdated         = models.CharField(max_length=255)
	parameters          = models.CharField(max_length=255)
	countsByMeasurement = models.CharField(max_length=255)
	count               = models.CharField(max_length=255)

	class Meta:
		db_table = "openaq"

	def __str__(self):
		return self.location