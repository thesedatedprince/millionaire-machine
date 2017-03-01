============
USER STORIES
============
```
As a User
so that my net income position can be determined
I want to be able to input income items into the app

As a User
so that my net income position can be determined
I want to be able to input expense items into the app

As a User
so that I can track whether my net income can meet that goal
I want to be able to input a financial goal (expressed as an amount and target date) into the app

As a User
so that I can track whether my net income can meet that goal
I want to be able to view the extent (expressed as a % and an amount) to which I am on target to achieve my financial goal

As a User
So that I can access the site features,
I want to be able to sign up for the website.

As a User
So that I can access my account multiple times,
I want to be able to sign in and out.

BONUS:
As a User
so that I can assess the effect of these altered assumptions on the date when financial goal can be achieved
I want to be able to change projected income/expense assumptions

As a User
So that I have a nice experience on the website
I want it to have a visually pleasing layout.
```

Site Map
--------
Inline-style:
![SiteMap]https://github.com/thesedatedprince/millionaire-machine/blob/master/Sitemap.png

Wireframes
----------
Inline-style:
![Userscreens]https://github.com/thesedatedprince/millionaire-machine/blob/master/Userscreens.png
Database set up for development environments
--------------------------------------------

Millionaire-machine has a PostgreSQL database.

On each new pull from master, if there are DB changes it is recommended that you run
```bin/rake db:setup``` on the first install (creates, runs migrations)
```bin/rake db:reset`` thereafter (drops and runs set up)

These commands handle required drop, schema creation or updates.
Run bin/rake db:seed with data required listed in db/seeds.rb.
