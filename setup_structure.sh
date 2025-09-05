#!/usr/bin/env bash
# -------------------------------------------------------------------
# build_docs_skeleton.sh
#
#  • durchsucht  src/algorithms/    nach allen *.py-Dateien
#  • ignoriert   __init__.py
#  • legt unter  docs/   die gleiche Ordner­struktur an
#  • erzeugt     gleichnamige *.md-Dateien mit Template:
#       # <Titel>
#       ## Ziel
#       ## Voraussetzung
#       ## Durchführung
#       ## Ergebnis
# -------------------------------------------------------------------
set -e

REPO_ROOT="$(git rev-parse --show-toplevel 2>/dev/null || pwd)"
SRC_DIR="$REPO_ROOT/src/algorithms"
DOCS_DIR="$REPO_ROOT/docs"

echo "Quellcode  : $SRC_DIR"
echo "Dokumente  : $DOCS_DIR"
echo

# -------------------------------------------------------------------
# Markdown-Template erzeugen
# $1 = Dateiname ohne .py (z. B. insertion_sort)
# -------------------------------------------------------------------
generate_md() {
  local title="$1"
  cat <<EOF
# ${title//_/ }

## Ziel
<!-- Beschreibe kurz das Problem bzw. den Zweck des Algorithmus -->

## Voraussetzung
<!-- Eingabeformat, benötigte Bibliotheken, Python-Version, ... -->

## Durchführung
<!-- Algorithmusidee, Pseudocode, eventuell Beweis/-Skizze -->

## Ergebnis
<!-- Zeit-/Speicherkomplexität, Beispielausgabe, Tests -->
EOF
}

# -------------------------------------------------------------------
# Hauptschleife: alle *.py-Dateien finden und passende .md-Datei anlegen
# -------------------------------------------------------------------
find "$SRC_DIR" -type f -name "*.py" ! -name "__init__.py" | while read -r pyfile
do
    rel_path="${pyfile#$SRC_DIR/}"          # z.B. sorting/insertion_sort.py
    md_path="${rel_path%.py}.md"            # sorting/insertion_sort.md
    target="$DOCS_DIR/$md_path"             # docs/sorting/insertion_sort.md
    target_dir="$(dirname "$target")"

    # Ordnerstruktur im docs-Verzeichnis abbilden
    mkdir -p "$target_dir"

    if [[ -f "$target" ]]; then
        echo "exists  -> $target (übersprungen)"
    else
        generate_md "$(basename "${pyfile%.py}")" > "$target"
        echo "created -> $target"
    fi
done