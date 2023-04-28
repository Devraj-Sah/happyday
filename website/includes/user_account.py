from logging import NullHandler
from struct import pack
from unicodedata import category
from django.shortcuts import render
from django.http import HttpResponse
from django.contrib import messages
from PIL import Image
from ..models import *
from root.models import *
from django.contrib.auth import authenticate,login,logout
from django.contrib.auth.decorators import login_required
from django.conf import settings
from django.contrib.auth.models import User
from django.urls import reverse
from django.shortcuts import redirect
from .Action import * #category and subcategory function
from django.db.models import Q
from django.contrib.auth.decorators import login_required
from django.conf import settings
from django.http import HttpResponseRedirect
from account.models import *
from django.contrib.auth import update_session_auth_hash

@login_required(login_url=settings.CLIENT_LOGIN_URL)
def index(request, order_id=None):
    try:
        c_id = request.COOKIES['c_id']
    except:
        return redirect('index_ecom')
    if order_id:
        udata = Order.objects.filter(id=order_id).update(pdc="c")
        messages.error(request, "Requested Order has been Cancled.")
        return redirect("UserProfile")
    all_data = Order.objects.filter(~Q(pdc="c"),~Q(pdc="d"),user_id=request.user.id).order_by('-updated_at')  
    menus = Navigation.objects.filter(parent_page_id=0).order_by('position')
    blog = Blog.objects.filter(status=1)
    product = Products.objects.all()  
    global_data = GlobalSettings.objects.first()

    wishvalue = Wishlist.objects.filter(temp_id=c_id,ishere=True)
    cartvalue = Wishlist.objects.filter(temp_id=c_id,ishere=False)
    wishvalue = len(wishvalue)
    cartvalue = len(cartvalue)

    data = {'page':"index",'menus':menus,'blog':blog,'product':product,'all_data':all_data,'wishvalue':wishvalue,'global_data':global_data, 'cartvalue':cartvalue}
    return render(request, 'main/user/user-account.html',data)

def Logout(request):
    logout(request)
    return redirect('website.index')

from django.http import HttpResponse 
@login_required(login_url=settings.CLIENT_LOGIN_URL)
def setting(request, id=None):
    if request.POST:
        if 'withoutpassword' in request.POST:
            # return HttpResponse("ok")
            data = {
                "first_name" : request.POST['first_name'],
                "username" : request.POST['last_name'],
                "email" :  request.POST['email'],
                "phone"    : request.POST['number'],
                "permanent_address" : request.POST['permanent_address'],            
                "current_address" : request.POST['current_address'],            
            }   
            user,create = CustomUser.objects.update_or_create(id=id , defaults=data)#create customer account
            user.role = user.USER
            user.save()
            return redirect(setting)      

            # user = authenticate(request=request,username=email, password=password)
            # if user is not None:
            #     user,create = CustomUser.objects.update(id=id , defaults=data)#create customer account
            #     user.role = user.USER
            #     user.save()

            # data = {
            #     "first_name" : request.POST['first_name'],
            #     "username" : request.POST['last_name'],
            #     "email" :  request.POST['email'],
            #     "phone"    : request.POST['number'],
            #     "permanent_address" : request.POST['permanent_address'],            
            #     "current_address" : request.POST['current_address'],            
            # }   
    user_detail = request.user
    menus = Navigation.objects.filter(parent_page_id=0).order_by('position')
    blog = Blog.objects.filter(status=1)
    product = Products.objects.all()  
    global_data = GlobalSettings.objects.first()

    try:
        c_id = request.COOKIES['c_id']
    except:
        return redirect('index_ecom')

    wishvalue = Wishlist.objects.filter(temp_id=c_id,ishere=True)
    cartvalue = Wishlist.objects.filter(temp_id=c_id,ishere=False)
    wishvalue = len(wishvalue)
    cartvalue = len(cartvalue)
    data = {'page':"index",'menus':menus,'blog':blog,'product':product,'user_detail':user_detail,'wishvalue':wishvalue,'global_data':global_data, 'cartvalue':cartvalue}
    return render(request, 'main/user/setting.html',data)
    
def ChangePassword(request,id=None):
    if request.POST:
        if 'withpassword' in request.POST:
            if request.POST['password']!=request.POST['cpassword']:
                messages.error(request, "Confirm password not match !!")
                return HttpResponseRedirect(request.META.get('HTTP_REFERER'))
            old_password =  request.POST['old_password']
            if request.user.check_password(old_password):
                if request.user.id==id:
                    current_user = CustomUser.objects.filter(id=id).first()
                    # return HttpResponse(current_user.email)
                    current_user.set_password(request.POST['password'])
                    current_user.save()
                    update_session_auth_hash(request, current_user)
                    messages.success(request, "Password Changed Successfully !")
                    return HttpResponseRedirect(request.META.get('HTTP_REFERER'))
                else:
                    messages.error(request, "You are Not authorize to change Others Password!!")
                    return HttpResponseRedirect(request.META.get('HTTP_REFERER'))
            else:
                messages.error(request, "Old Password Not Matched !!")
                return HttpResponseRedirect(request.META.get('HTTP_REFERER'))
    menus = Navigation.objects.filter(parent_page_id=0).order_by('position')
    blog = Blog.objects.filter(status=1)
    product = Products.objects.all()  
    global_data = GlobalSettings.objects.first()

    try:
        c_id = request.COOKIES['c_id']
    except:
        return redirect('index_ecom')
    wishvalue = Wishlist.objects.filter(temp_id=c_id,ishere=True)
    cartvalue = Wishlist.objects.filter(temp_id=c_id,ishere=False)
    wishvalue = len(wishvalue)
    cartvalue = len(cartvalue)
    data = {'page':"index",'menus':menus,'blog':blog,'product':product,'wishvalue':wishvalue,'global_data':global_data, 'cartvalue':cartvalue}
    return render(request, 'main/user/change-password.html',data)
    
def ViewOrder(request, p_id):
    menus = Navigation.objects.filter(parent_page_id=0).order_by('position')
    blog = Blog.objects.filter(status=1)
    product = Products.objects.all()  
    all_data = Order.objects.get(id=p_id)  

    try:
        c_id = request.COOKIES['c_id']
    except:
        return redirect('index_ecom')
    wishvalue = Wishlist.objects.filter(temp_id=c_id,ishere=True)
    cartvalue = Wishlist.objects.filter(temp_id=c_id,ishere=False)
    wishvalue = len(wishvalue)
    cartvalue = len(cartvalue) 
    data = {'page':"index",'menus':menus,'blog':blog,'product':product,'all_data':all_data,'wishvalue':wishvalue, 'cartvalue':cartvalue}
    return render(request, 'main/user/view-order.html',data)
  