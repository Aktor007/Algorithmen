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

```mermaid
%% -------------------------------------------
%%  Insertion-Sort – Schritt für Schritt
%% -------------------------------------------
flowchart TD
    %% Legende
    subgraph "Legende"
        direction LR
        L1[linke Seite = sortiert] --- L2[rechte Seite = unsortiert]
    end

    %% Schritte
    A0["5 &#124; 2 4 6 1 3"]
    A1["2 5 &#124; 4 6 1 3"]
    A2["2 4 5 &#124; 6 1 3"]
    A3["2 4 5 6 &#124; 1 3"]
    A4["1 2 4 5 6 &#124; 3"]
    A5["1 2 3 4 5 6 &#124;"]

    %% Kanten + Beschriftung
    A0 -->|"2" einsetzen| A1
    A1 -->|"4" einsetzen| A2
    A2 -->|"6" einsetzen| A3
    A3 -->|"1" einsetzen| A4
    A4 -->|"3" einsetzen| A5
```


## Ergebnis
<!-- Zeit-/Speicherkomplexität, Beispielausgabe, Tests -->
