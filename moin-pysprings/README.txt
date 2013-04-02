= Solenoid theme for MoinMoin =

This is a theme for MoinMoin wiki engine based on Mandarin.
The license is GNU GPLv2, see the COPYING file for details.
Copyright 2009, 2010 by Renato Silva, and others.



== Installation ==

You can use install.sh for automating theme installation. If you are not using
a default location for <moin_htdocs>, then you'll need to check step 6. Please
read the script's source code to know what exactly will be done, or execute the
steps below manually. Unisntalling is done by simply removing the theme files
from the target locations.

1) Put solenoid.py into your <wiki_instance>/data/plugin/theme directory.
   This is the main theme file.

2) Put allactions.py file into your <wiki_instance>/data/plugin/action. This
   action displays all available actions for the current page, and will be used
   as a fallback if edit_bar configuration is missing the 'ActionsMenu' item.

3) Put themeprefs.py into your <wiki_instance>/data/plugin/userprefs. This file
   adds a new page with theme options in the user preferences (see the
   configuration section below).

4) Copy the translations/<lang_COUNTRY>.po files to
   <moin_install>/MoinMoin/i18n/solenoid/<lang-country>_custom.Theme.po.
   These files add custom translations used by this theme to Moin translation
   system. You only need to copy files for the languages used in your wiki.

5) Put content of htdocs directory into <moin_htdocs>/solenoid.

6) If your <moin_htdocs> are not in default location, specify it in your
   wikiconfig.py with solenoid_htdocs_dir = '/your/custom/path'. These are the
   default locations for static files:

   * Moin 1.9 - <moin_install>/MoinMoin/web/static/htdocs
   * Moin 1.8 - <moin_install>/wiki/htdocs
   * /usr/share/moin/htdocs

   Telling the custom location to the theme will avoid the http server sending
   links to missing stylesheets, for example when you are not using the custom
   css files feature. If you do not tell, those links will cause http server
   requests for non-existing css files, which may add considerable amount of
   unnecessary 404 errors in your server logs.



== Configuration options for wikiconfig.py ===

* solenoid_clear
  Set this to True to enable the clear look.

* solenoid_full_screen
  Set this to True if you want this theme full screen, just like Mandarin.
  When False (default) this option will display the site in a box style.

* solenoid_shadow
  Set this to True for enabling the shadow effect in box mode. This
  configuration has no effect when full screen mode is enabled.

* solenoid_userprefs
  Set this to True for allowing users to toggle clear look, full screen mode
  and shadow effect, without needing to edit wikiconfig.py and thus restart
  Moin. If you don't want to allow each user to change theme's appearance,
  leave this as False (default).

* solenoid_cms_mode
  Set this to True for enabling the CMS mode similar to modernized_cms theme.
  This mode will hide the edit bar, page title, and last edit info for non
  logged in users. CMS mode is disabled by default.

* solenoid_theme_credit
  Set this to False if you don't want a theme reference to be added in the page
  footer before the page_credits items. Default value is True.

* solenoid_append_translation
  Set this to False if you don't want theme translation to affect the whole
  wiki. When True (default) this option will append theme translations to
  Moin translation system, just like they were delivered together with Moin.
  This allows, for example, translation of allactions.py without touching
  the code. It will work just like a built-in translation.



== CSS customization ==

You can customize site style without changing the original css files.
This way, when you update the theme your customizations won't be overwritten.
Create the directory <moin_htdocs>/solenoid/css/custom with the following
files as needed:

* style.css - for customizing main style.
* print.css - for customizing print view.
* full.css - for customizing full screen mode.
* msie/<target_style>_ie<version>.css - for customizing IE fixes.
