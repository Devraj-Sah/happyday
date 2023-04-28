# from asyncio.windows_events import NULL
from logging import NullHandler
from struct import pack
from unicodedata import category
from django.shortcuts import render, redirect
from django.http import HttpResponse
from django.contrib import messages
from PIL import Image
from ..models import *
from django.contrib.auth import authenticate,login,logout
from django.contrib.auth.decorators import login_required
from django.conf import settings
from django.contrib.auth.models import User
from django.urls import reverse
from django.shortcuts import redirect

@login_required(login_url=settings.LOGIN_URL)
def GlobalCreate(request, pk=None):
    create_link_name = reverse("GlobalCreate")
    if pk==None:
        slug1 = "Ads-Create" 
    else:
        slug1 = "Ads-update" 
    action = "AdsStore"
    #Fetching the data of particular ID
    if pk:
        get_data = GlobalSettings.objects.get(id=pk)  
    else: 
        get_data = GlobalSettings.objects.first()
    data = {'slug1':slug1,'create':False,'create_link_name':create_link_name,'id_data':get_data, 'action':action}
    client_msg = ContactUs.objects.filter(read_unread=True)
    data['client_msg']=client_msg
    return render(request, 'admin/ads/global-form.html',data)

@login_required(login_url=settings.LOGIN_URL)
def GlobalStore(request,pk=None):
    if request.POST:

        if not request.FILES == None:
            for i in request.FILES:
                try:
                    im = Image.open(request.FILES[i])
                except:
                    messages.error(request, "Only images allowed "+str(request.FILES[i])+" is not an image in "+str(i))
                    return redirect(request.POST['next'])
                
         # Inserting Data into Table
        add_ads = GlobalSettings.objects.get(id=pk)

        if 'image4' in request.FILES:
            image4 = request.FILES['image4']
            add_ads.Image4 = request.FILES['image4']

        if 'image5' in request.FILES:
            image5 = request.FILES['image5']
            add_ads.Image5 = image5


        if 'image6' in request.FILES:
            image6 = request.FILES['image6']
            add_ads.Image6 = image6


        if 'image7' in request.FILES:
            image7 = request.FILES['image7']
            add_ads.Image7 = image7


        if 'image8' in request.FILES:
            image8 = request.FILES['image8']
            add_ads.Image8 = image8


        if 'image9' in request.FILES:
            image9 = request.FILES['image9']
            add_ads.Image9 = image9


        if 'image10' in request.FILES: 
            image10 = request.FILES['image10']
            add_ads.Image10 = image10
        
        if 'image11' in request.FILES: 
            image11 = request.FILES['image11']
            add_ads.Image11 = image11

        add_ads.save()       

        #After Insert open product
        return redirect(GlobalCreate)



