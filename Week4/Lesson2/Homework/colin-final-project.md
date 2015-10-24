BEWD: FINAL PROJECT
--------

#DESCRIPTION

https://datadock.io: Query, Log, Share the Web
(it's essentially a Bandcamp for front end / full stack web developers)

DataDock has a front-end interface like Google, where you enter a URL and the site analyzes it for all web technologies being used. This can be accomplished using a Ruby gem WAPPALYZER.

Home page has open access to everyone and lets you analyze any site. After analyzing and giving you site info, you get a prompt to create an account to start sharing with others.

You can save the site to your account. This "favorites" the site creates a "card" with a screenshot of the site, along with site title, URL, and a list of web technologies. Within this card, you can write a brief description of the site, upload additional screenshots, or swap out the screenshot for one of your own choosing.

Optional feature: On saving website to your hub, datadock.io scans for humans.txt file in site and makes this a clickable item in the hub.

The card will have:
[site screenshot]
[site url]
[WAPPALYZER detected technologies]
[detected humans.txt file if applicable]
[view source code in window]
[view whois in window]
[google pagespeed insights in window]
[place to add description]

As you save multiple sites, you create a hub of web apps.

Two options when saving websites: (1) Save private, (2) Save and post. It will be recommended you write a description when going with option (2)Saving and posting, as this will be public and will show up to others/in your public feed.

Social aspect: you can gain followers, can follow others and be notified when they favorite new web applications.

From saved options, you can segment your hub into lists and email these lists, or provide a private URL to send to others to access this list (send to team, to boss, to friends, etc.).

Open API: link your feed to your portfolio site, or wherever you please.

TECH SPECS:
Heroku hosting
Ruby on Rails framework
Bourbon.io SCSS framework: https://github.com/thoughtbot/bourbon
Neat.io grid: https://github.com/thoughtbot/neat
Bitters.io boilerplate object styles: https://github.com/thoughtbot/bitters
Wappalyzer Gem: https://github.com/skroutz/wappalyzer-ruby | Scans sites for web tech
Email Gem: https://github.com/mikel/mail | Blasts email with credentials
Email Gem: https://github.com/maxwell/screencap | Takes screenshot of site




