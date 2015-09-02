Best Snickerdoodles
#####################
:date: 2015-08-25 08:00
:author: tim
:tags: meetup summary

Tonight's meetup was about using `"Mob Programming" to find "the best snickerdoodle
recipe" <http://www.meetup.com/PySprings/events/224574554/>`_ and we spent the
time trying to find a way to use APIs and scraping to determine a "best" recipe.

After some early questions like "what is a snickerdoodle", "are we looking to
make cookies or look for a way to have them delivered", one of the big questions
ended up being "what makes a recipe the best?". After discussing metrics like
highest calorie count or most butter and sugar, we ended up attempting to make
an amalgamated combination recipe - which was interesting but didn't yield a
great result once we realized that the instructions couldn't be averaged and
combined in the same way.

The second approach we took is to find an API with fewer details but a method
for ranking the complete recipes. This solved the issue of combining instructions with
ingredients and even though it was a less sophisticated solution, it did return
more complete information.

Overall, there was a lot of learning and much fun was had by all! Thanks to
Ryan for leading the session.

The ipython notebooks and code that we came up with are available at:

https://github.com/pysprings/recipe-finding
