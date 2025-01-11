from django.conf import settings
from django.db import models


# Create your models here.
class Question(models.Model):
    text = models.CharField()


class Answer(models.Model):
    question = models.ForeignKey(Question, on_delete=models.CASCADE)
    user = models.ForeignKey(settings.AUTH_USER_MODEL, on_delete=models.CASCADE)
    response = models.TextField()
