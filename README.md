# Kurzbeschreibung

Python 3.12 installieren

VS Code installieren (andere IDE möglich, sollte Jupyter Notebooks unterstützen)

Github Repository clonen

Requirements.txt installieren

Notebook vorbereitung.ipynb ausführen

# Windows
## Python installieren
Version 3.12 (alte Version ggf. vorher deinstallieren; 3.13 funktioniert nicht!)

Link: https://www.python.org/downloads/release/python-3127/ (Download ist etwas weiter unten, "Windows installer (64-bit)" wählen)

Installer ausführen, im ersten Menü beide Haken setzten und installieren

Erfolg überprüfen: Auf der Kommandozeile (cmd.exe) "python --version" eingeben (und Enter drücken)-> sollte "Python 3.12.7" ausgeben

Bei Problemen:
- Nachschauen, ob Python istalliert wurde
- Hinweis: Probleme hängen meist damit zusammen, dass Python nicht richtig im PATH landet.
- Windows neu starten (hilft hier tatsächlich teils).
- Deinstallieren, neu starten, installieren, neu starten.
- Python manuell zu PATH hinzufügen

## IDE (VS Code)
VS Code installieren: https://code.visualstudio.com/Download

## Git - Repo clonen
Git installieren: https://git-scm.com/downloads (falls noch nicht vorhanden)

Einen Ordner anlegen oder auswählen, in den das Repo geclont werden soll.

In dem Ordner Rechtsclick -> open in Git Bash

In Git Bash: "git clone https://github.com/Tryner/aml_wa24.git"

Jetzt sollte in dem gewählten Ordner ein neuer Ordner "aml_wa24" auftauchen

Projekt in VS Code öffnen: File -> Open Folder -> Ordner aml_wa24 auswählen

## Notwendige packages installieren
In VS Code Terminal öffnen (Terminal -> new Terminal)

Dies sollte eine Kommandozeile öffnen. In dieser Folgendes ausführen:
- venv erstellen: "python -m venv venv"
- Hinweis: Sollte "We noticed a new environment has been created. Do you want to select it for the workspace folder?" aufploppen könnt ihr "Yes" auswählen.
- venv aktivieren: "venv\Scripts\activate.bat"
- Am Anfang der Commandozeile sollte nun "(venv)" stehen. Falls nicht: nicht fortfahren.
- pip aktualisieren: "python -m pip install --upgrade pip"
- pip tools installieren: "python -m pip install pip-tools"
- Packages installieren: "pip-sync requirements.txt". 
- Der vorherige Schritt kann etwas dauern. Es werden mehrere Gigabyte heruntergeladen. Auch ohne Download dauert die Installation mehr als eine Minute. 

## Vorbereitungs Notebook ausführen
Wenn alles geklappt hat solltet ihr jetzt das Vorbereitungsnotebook ausführen können.

Das Notebook findet ihr in dem Ordner "notebooks" und heißt "vorbereitung.ipynb". Den File-Explorer findet ihr in VS-Code auf der linken Seite, ganz oben direkt unter dem VS Code Logo.

"Run All" drücken.

Es sollte ein Dialog aufpoppen wo ihr den Kernel auswählen müsst. Hier zuert "Python" und dann "venv" (vermutlich mit Stern) auswählen. Die Ausführung dauert etwas, es werden mehrere Gigabyte heruntergeladen.

Es sollten ein Haufen Zahlen, vermutlich Ladebalken und am Ende "Success" ausgegeben werden.

Fertig!

# Linux
Bekommt ihr selbst hin. Anleitung für Windows auf Linux anpassen wo notwendig.

Um die Packages zu installieren könnt ihr einfach im Terminal "make venv" und "make install" ausführen.

# MacOS
Hab ich nicht, kenn ich nicht. Sollte analog zu Linux funktionieren. Wenn nicht: Müsst ihr wohl colab nutzen.