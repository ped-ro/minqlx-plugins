# minqlx-plugins
westcoastcrew.py

westcoastcrew.py is a minqlx-plugin, to be used in conjunction with westcoastcrew.pk3 , available at https://steamcommunity.com/sharedfiles/filedetails/?id=1733859113
any server admins that wish to run this sounds plugin, must add the steam workshop item to their servers workshop.txt file, for example:

#vks west coast crew

1733859113

then must also add the same workshop item number, 1733859113, to their servers launch script as:

+set qlx_workshopReferences "1733859113"
  
if you do not have the above line item in your servers launch script, or in server.cfg , it must be added, so that your server will download the .pk3 file, and distribute it to connecting clients.


