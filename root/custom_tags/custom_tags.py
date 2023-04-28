from django.template.defaulttags import register
from root.models import *
from account.models import CustomUser
from django.db.models import Q
from django.db.models import Count

@register.filter
def get_NepaliDate(date):
    try:
        import datetime
        import nepali_datetime
        dt = datetime.date(date.year,date.month,date.day)
        nepali_date = nepali_datetime.date.from_datetime_date(dt)
        return nepali_date
        # return nepali_date.strftime('%K-%n-%D (%k %N %G)')   
    except:
        return date
        
@register.filter
def times(count, start):
    if start > 3 :
        return range(start-2,count)
    return range(1,count)

# @register.filter
# def str(str):
#     if len(str) > 50:
#         to_str = '%.50s' % str
#         data = to_str + ' ...'
#         return data
#     return str

@register.filter
def str_rm(string,num=50):
    if len(string) > num:
        total_str = '%.'+str(num)+'s'
        to_str =  total_str % string
        data = to_str + ' ...'
        return data
    return string

# get product_id , user_id 
# check product_id instances witn user_id
# count
#return

@register.filter()
def get_star(p_id):
    result = Review.objects.filter(product_id=p_id).values('star').annotate(count=Count('star')).order_by('-count')

    if result.exists():
        max_count = result.first()['count']
        max_star = result.filter(count=max_count).first()['star']

    else:
        max_star = 0
    return int(max_star)


@register.filter()
def get_star_review(p_id):
    result = Review.objects.filter(product_id=p_id).values('star').annotate(count=Count('star')).order_by('-count')

    if result.exists():
        max_count = result.first()['count']
    else:
        max_count = 0
    return int(max_count)

