# language: de
@javascript
Funktionalität: Hauptmenu
  Als Benutzer der Seite möchte ich
  in meinem Kontext ein Hauptmenü angezeigt bekommen,
  um die Funktionen der App nach meinen Berechtigungen nutzen zu können.

  Grundlage:
    Angenommen die App ist im Browser geladen.

  Szenario: Nicht angemeldet
    Wenn ich das Hauptmenü öffne.
    Dann möchte ich "ABOUT" sehen.
    Und möchte ich "CONTACT" sehen.
    Und möchte ich "IMPRESSUM" sehen.
    Und möchte ich "LOGIN" sehen.
  
  @wip
  Szenario: Angemeldet als Benutzer
    Angenommen eine Anmeldung als Benutzer.
    Wenn ich das Hauptmenü öffne.
    Dann möchte ich "ABOUT" sehen.
    Und möchte ich "CONTACT" sehen.
    Und möchte ich "IMPRESSUM" sehen.
    Und möchte ich "LOGOUT" sehen.
    Und möchte ich "LOGIN" nicht sehen.
    Und möchte ich "PICTURES" nicht sehen.
    Und möchte ich "USERS" nicht sehen.

  Szenario: Angemeldet als Administrator
    Angenommen eine Anmeldung als Administrator.
    Wenn ich das Hauptmenü öffne.
    Dann möchte ich "ABOUT" sehen.
    Und möchte ich "CONTACT" sehen.
    Und möchte ich "IMPRESSUM" sehen.
    Und möchte ich "LOGOUT" sehen.
    Und möchte ich "LOGIN" nicht sehen.
    Und möchte ich "PICTURES" sehen.
    Und möchte ich "USERS" sehen.
