# language: de
@javascript @fs
Funktionalität: Bilder bearbeiten
  Als Administrator möchte ich,
  um Inhalte einzufügen,
  hochgeladene Bilder bearbeiten können.

  Grundlage:
    Angenommen die App ist im Browser geladen.
    Und eine Anmeldung als Administrator.
    Und eine Datei "test.png" im Testfixtures-Verzeichnis.

  Szenario: Ein Bild bearbeiten
    Angenommen ein hochgeladenes Bild.
    Und ich navigiere zur Bilder-Liste.
    Wenn ich das hochgeladene Bild zum Bearbeiten auswähle.
    Und ich "Test-Name-neu" als Name eingebe.
    Und ich "Test-Kommentar-neu" als Kommentar eingebe.
    Und ich das Bild "test.png" zum erstellen auswähle.
    Und ich den "UPLOAD"-Button klicke.
    Dann möchte ich "Picture successfully updated." sehen.
    Und möchte ich die Bilder-Liste sehen.
    Und möchte ich das hochgeladene Bild als Eintrag sehen.
    Und möchte ich "Test-Name-neu" sehen.
    Und möchte ich "Test-Kommentar-neu" sehen.

  Szenario: Ein Bild bearbeiten - Name leer
    Angenommen ein hochgeladenes Bild.
    Und ich navigiere zur Bilder-Liste.
    Wenn ich das hochgeladene Bild zum Bearbeiten auswähle.
    Und ich "" als Name eingebe.
    Und ich "Test-Kommentar-neu" als Kommentar eingebe.
    Und ich das Bild "test.png" zum erstellen auswähle.
    Und ich den "UPLOAD"-Button klicke.
    Dann möchte ich "Please choose at least a name." sehen.
