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
%% ----------------------------------------------------------
%%  Bunter Insertion-Sort – Schritt für Schritt (5 2 4 6 1 3)
%% ----------------------------------------------------------

flowchart TB
    %% ----------  Farbschemata  ----------
    classDef sorted   fill:#b2f2bb,stroke:#2f9e44,color:#000;      %% grün
    classDef unsorted fill:#ffe8a1,stroke:#f08c00,color:#000;      %% orange
    classDef key      fill:#ffc9c9,stroke:#fa5252,color:#000;      %% rot

    %% ----------  Schritt 0  ----------
    subgraph STEP0["Schritt 0"]
        direction LR
        s0["5"]:::sorted
        u0["2 4 6 1 3"]:::unsorted
        k0["Key = 2"]:::key
    end

    %% ----------  Schritt 1  ----------
    subgraph STEP1["Schritt 1"]
        direction LR
        s1["2 5"]:::sorted
        u1["4 6 1 3"]:::unsorted
        k1["Key = 4"]:::key
    end

    %% ----------  Schritt 2  ----------
    subgraph STEP2["Schritt 2"]
        direction LR
        s2["2 4 5"]:::sorted
        u2["6 1 3"]:::unsorted
        k2["Key = 6"]:::key
    end

    %% ----------  Schritt 3  ----------
    subgraph STEP3["Schritt 3"]
        direction LR
        s3["2 4 5 6"]:::sorted
        u3["1 3"]:::unsorted
        k3["Key = 1"]:::key
    end

    %% ----------  Schritt 4  ----------
    subgraph STEP4["Schritt 4"]
        direction LR
        s4["1 2 4 5 6"]:::sorted
        u4["3"]:::unsorted
        k4["Key = 3"]:::key
    end

    %% ----------  Schritt 5  ----------
    subgraph STEP5["Schritt 5"]
        direction LR
        s5["1 2 3 4 5 6"]:::sorted
    end

    %% ----------  Übergänge  ----------
    STEP0 -->|"2 einfügen"| STEP1
    STEP1 -->|"4 einfügen"| STEP2
    STEP2 -->|"6 einfügen"| STEP3
    STEP3 -->|"1 einfügen"| STEP4
    STEP4 -->|"3 einfügen"| STEP5


```


## Ergebnis
<!-- Zeit-/Speicherkomplexität, Beispielausgabe, Tests -->
