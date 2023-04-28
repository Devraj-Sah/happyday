from django import template

register = template.Library()

@register.simple_tag
def my_function(my_param):
    # Do something with my_param and return a value
    return 'Hello, {}'.format(my_param)