#!/bin/bash

echo "Use sudo!"

sudo echo "
[com.solus-project.budgie-menu]
menu-icon = your-sexy-menu-icon
">/usr/share/glib-2.0/schemas/com.solus-project.budgie-menu.gschema.override
sudo nano /usr/share/glib-2.0/schemas/com.solus-project.budgie-menu.gschema.override