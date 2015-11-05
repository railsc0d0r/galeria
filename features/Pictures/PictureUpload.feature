# language: de
@javascript
Funktionalität: Bilder hochladen und öffentlich stellen
  Als Administrator möchte ich,
  um Inhalte einzufügen,
  Bilder hochladen können.

  Grundlage:
    Angenommen die App ist im Browser geladen.
    Und eine Anmeldung als Administrator.
    Und eine Datei "test.png" im Testfixtures-Verzeichnis.

  @wip
  Szenario: Ein Bild hochladen
    Wenn ich das Hauptmenü öffne.
    Und ich den "PICTURES"-Link klicke.
    Dann screenshot.
    Und ich den "Add"-Link klicke.
    Und ich ein Bild zum Upload auswähle.
    Und ich "Test-Kommentar" als Kommentar eingebe.
    Und ich den "Upload"-Button klicke.
    Dann möchte ich "Picture successfully uploaded." sehen.
    Und möchte ich die Bilder-Liste sehen.
    Und möchte ich das hochgeladene Bild als Thumbnail sehen.

  Szenario: Ein Bild öffentlich stellen
    Angenommen ein hochgeladenes Bild.
    Und ich navigiere zur Bilder-Liste.
    Wenn ich die Checkbox unter dem hochgeladenen Bild aktiviere.
    Dann möchte ich "Picture successfully published" sehen.
 
