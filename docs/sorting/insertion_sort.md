# insertion sort

## Ziel

Insertion Sort ist ein einfaches, stabilen Sortier-Algorithmus, der besonders bei kleinen oder fast sortierten Daten­mengen effizient arbeitet. 

## Voraussetzung

Endliche Liste/Array von Objekten, die sich eindeutig miteinander vergleichen lassen.

## Durchführung

1. Starte mit dem ersten Element
    – Es liegt alleine, deshalb ist es automatisch sortiert.

2. Nimm das nächste Element („Schlüssel“) in die Hand.

3. Vergleiche es mit den bereits sortierten Elementen links davon:
    • Gehe von rechts nach links.
    • Solange das linke Element größer ist, schiebe es einen Platz nach rechts.

4. Lege den „Schlüssel“ in die Lücke, die dabei entstanden ist.

5. Rücke eins nach rechts und wiederhole Schritte 2 bis 4, bis alle Elemente durchlaufen sind.

6. Fertig – das ganze Feld ist nun sortiert.


### Grafisch

flowchart TD
    A0([Start<br>erstes Element gilt als sortiert])
    A1[Hole nächstes&nbsp;Element<br>(key)]
    A2{Vergleiche<br>linkes&nbsp;Nachbar­element<br>&gt; key ?}
    A3[verschiebe linkes<br>Element eine Position<br>nach rechts]
    A4[setze key in die<br>entstandene Lücke]
    A5{i&nbsp;⬅ i+1<br>weitere Elemente?}
    A6([Fertig – Array sortiert])

    A0 --> A1
    A1 --> A2
    A2 -->|ja| A3 --> A2
    A2 -->|nein| A4 --> A5
    A5 -->|ja| A1
    A5 -->|nein| A6


## Ergebnis
<!-- Zeit-/Speicherkomplexität, Beispielausgabe, Tests -->
