PySprings Website
=================

This is the PySprings website.  It's generated using pelican_ and a few tools
for doing CSS.


Building the static HTML using pelican
--------------------------------------

To build the site, create a virtualenv and install pelican::

  $ virtualenv env_pelican
  $ source env_pelican/bin/activate
  $ pip install pelican

Once pelican is installed in the virtualenv, you can build the site from the `pelican/` directory::

  $ cd pelican
  $ make html

Generating CSS from SCSS
-----------------------------

To generate the CSS, you'll need some other tools: sass, compass and zurb-foundation.
While I'd love to migrate to foundation 4, that isn't going to happen right now.

To get started, run the following as root::

  # gem install zurb-foundation -v 3.2.5

make sure you have the '-v 3.2.5' part - foundation v4+ is not going to compile
right now.

This will pull in a bunch of other ruby gems if you don't have them installed
already. Once you have everything installed, go to the site-css dir and run::

  $ compass compile

If you're making lots of css changes, you'll want to have compass watch for changes::

  $ compass watch

.. _pelican: http://docs.getpelican.com/
