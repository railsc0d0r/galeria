# language: de
@javascript @fs
Funktionalität: Bilder löschen
  Als Administrator möchte ich,
  um Inhalte zu administrieren,
  hochgeladene Bilder löschen können.

  Grundlage:
    Angenommen die App ist im Browser geladen.
    Und eine Anmeldung als Administrator.
    Und eine Datei "test.png" im Testfixtures-Verzeichnis.

  Szenario: Ein Bild hochladen
    Angenommen ein hochgeladenes Bild.
    Und ich navigiere zur Bilder-Liste.
    Wenn ich das hochgeladene Bild zum Löschen auswähle.
    Dann möchte ich "Picture successfully deleted." sehen.
    Und möchte ich die Bilder-Liste sehen.
    Und möchte ich das hochgeladene Bild nicht als Eintrag sehen.
