# language: de
@javascript @fs
Funktionalität: Bilder hochladen und öffentlich stellen
  Als Administrator möchte ich,
  um Inhalte einzufügen,
  Bilder hochladen können.

  Grundlage:
    Angenommen die App ist im Browser geladen.
    Und eine Anmeldung als Administrator.
    Und eine Datei "test.png" im Testfixtures-Verzeichnis.

  Szenario: Ein Bild hochladen
    Wenn ich das Hauptmenü öffne.
    Und ich den "PICTURES"-Link klicke.
    Und ich den "ADD"-Link klicke.
    Und ich "Test-Name" als Name eingebe.
    Und ich "Test-Kommentar" als Kommentar eingebe.
    Und ich das Bild "test.png" zum erstellen auswähle.
    Und ich den "UPLOAD"-Button klicke.
    Dann möchte ich "Picture successfully uploaded." sehen.
    Und möchte ich die Bilder-Liste sehen.
    Und möchte ich das hochgeladene Bild als Eintrag sehen.

  Szenario: Ein Bild hochladen ohne Bild - Fehlermeldung
    Wenn ich das Hauptmenü öffne.
    Und ich den "PICTURES"-Link klicke.
    Und ich den "ADD"-Link klicke.
    Und ich den "UPLOAD"-Button klicke.
    Dann möchte ich "Please choose an image and a name." sehen.

  Szenario: Ein Bild öffentlich stellen
    Angenommen ein hochgeladenes Bild.
    Und ich navigiere zur Bilder-Liste.
    Wenn ich die Checkbox neben dem hochgeladenen Bild aktiviere.
    Dann möchte ich "Picture successfully published." sehen.

  Szenario: Ein Bild privat setzen
    Angenommen ein hochgeladenes und veröffentlichtes Bild.
    Und ich navigiere zur Bilder-Liste.
    Wenn ich die Checkbox neben dem hochgeladenen Bild deaktiviere.
    Dann möchte ich "Picture successfully unpublished." sehen.
