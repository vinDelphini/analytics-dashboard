from django.urls import path
from . import views

urlpatterns = [
    path('', views.home, name='home'),
    path('dashboard', views.dashboard, name='dashboard'),

    path('register/', views.registerPage, name='register'),
    path('login/', views.loginPage, name='login'),
    path('logout/', views.logoutUser, name='logout'),
    path('forgotpass/', views.forgotPassword, name='forgot-password'),

    path('404/', views.errorPage, name='404'),
    path('blank', views.blank, name='blank')
]