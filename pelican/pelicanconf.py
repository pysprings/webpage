#!/usr/bin/env python
# -*- coding: utf-8 -*- #

AUTHOR = u'PySprings'
SITENAME = u'PySprings'
SITEURL = 'http://stg.pysprings.org'

THEME = 'pysprings-theme/'

TIMEZONE = 'America/Denver'

DEFAULT_LANG = u'en'

# settings
DISPLAY_PAGES_ON_MENU = True
#DIRECT_TEMPLATES = ['categories', 'tags']

# Blogroll
LINKS =  (('Pelican', 'http://docs.notmyidea.org/alexis/pelican/'),
          ('Python.org', 'http://python.org'),
          ('Jinja2', 'http://jinja.pocoo.org'),
          ('You can modify those links in your config file', '#'),)

# Social widget
SOCIAL = (('https://github.com/pysprings', 'github'),
        ('https://twitter.com/pysprings', 'twitter'),
        ('mailto:pysprings@pysprings.org', 'envelope'),)

SPONSORS = (('http://enclavecoop.com/', 'enclave'),)

DISQUS_SITENAME = 'pysprings'

DEFAULT_PAGINATION = 3
