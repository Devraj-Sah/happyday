from root.models import *
from django.http import HttpResponse
from django.shortcuts import render
from django.core.paginator import Paginator
from django.views.decorators.csrf import csrf_exempt

@csrf_exempt
def ProductSearch(request):
    if request.GET:
        # search = Products.objects.filter(name='product1')
        # return HttpResponse('You search ' + request.GET['product'])
        menus = Navigation.objects.filter(parent_page_id=0,status=1).order_by('position')
        all_product = Products.objects.filter(name__icontains=request.GET['product'])
        product = Paginator(all_product, 9)
        Categories = Navigation.objects.filter(page_type='sale').order_by('position')
        # return HttpResponse(all_product)
        page_number = request.GET.get('page')
        product = product.get_page(page_number)
        c_id = request.COOKIES['c_id']
        global_data = GlobalSettings.objects.first()

        wishvalue = Wishlist.objects.filter(temp_id=c_id,ishere=True)
        cartvalue = Wishlist.objects.filter(temp_id=c_id,ishere=False)
        wishvalue = len(wishvalue)
        cartvalue = len(cartvalue)

        data = {'menus':menus,'global_data':global_data,'product':product,'c_id':c_id,'search':all_product, 'wishvalue':wishvalue, 'cartvalue':cartvalue,'Categories':Categories}
        return render(request,'main/search.html',data)
