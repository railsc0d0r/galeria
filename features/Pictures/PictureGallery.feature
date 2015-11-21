# language: de
@javascript @fs
Funktionalität: Bilder in einer Gallerie anzeigen
  Als Besucher möchte ich,
  um Kunst geniessen und mir einen Eindruck vom Schaffen der Künstlerin machen zu können,
  Bilder .

  Grundlage:
    Angenommen die App ist im Browser geladen.
    Und eine Datei "test.png" im Testfixtures-Verzeichnis.
    Und 3 hochgeladene Bilder.
    Und 2 hochgeladene und veröffentlichte Bilder.

  @wip
  Szenario: Gallerie für nicht angemeldete Besucher
    Wenn ich die Startseite aufrufe.
    Dann will ich 2 Bilder in einer Gallerie angezeigt bekommen.

  @wip
  Szenario: Gallerie für angemeldete Besucher
    Angenommen eine Anmeldung als Benutzer.
    Wenn ich die Startseite aufrufe.
    Dann will ich 5 Bilder in einer Gallerie angezeigt bekommen.
