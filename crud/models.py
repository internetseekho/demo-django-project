from django.db import models

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

class Airnow(models.Model):
	DateIssue         = models.CharField(max_length=255)
	DateForecast      = models.CharField(max_length=255)
	ReportingArea     = models.CharField(max_length=255)
	StateCode         = models.CharField(max_length=500)
	Latitude          = models.CharField(max_length=255)
	Longitude         = models.CharField(max_length=255)
	ParameterName     = models.CharField(max_length=255)
	AQI               = models.CharField(max_length=255)
	Category          = models.CharField(max_length=255)
	ActionDay         = models.CharField(max_length=255)
	Discussion        = models.CharField(max_length=255)

	class Meta:
		db_table = "arinow"

	def __str__(self):
		return self.ReportingArea