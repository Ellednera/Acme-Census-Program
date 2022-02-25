# Acme-Census-Program
A General Census Program Created for Fun

# External Modules Required
- CGI
- CGI::Carp
- HTML::Template

# Server Program
Apache2 (reconfigured to run as a normal user)

# Other Tools Used
- Bootstrap

# Local Storage
This web app pulls data from local file system instead of a database because there's really no need for a database :)

All data will be stored in YAML format. It's easy to read :)

# Paths Used
1. The local storage is located at *$HOME/apache2/acme-census*. Change this path to whichever path you want, just remember to also change the path in the cgi scripts :) This will be the place where all the census data are stored.
2. All the scripts pull their external resources from an actual ip address. localhost(127.0.0.1) will do fine, but if you intend to access this web app from another device, make sure you use the actual ip address of your computer (server) instead of localhost.

# Operating System
This web app is created under Linux, Windows users might have to do a little bit of tweaking to make the app work correctly

# Other Notes
The *other* directory might contain some useful stuff.
