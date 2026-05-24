#!/bin/bash
# BTR Knowledge Extraction Pipeline
# Usage: bash pipeline.sh <source_url> <source_name> <chunk_size_pages>

SOURCE_URL=$1
SOURCE_NAME=$2
CHUNK_SIZE=${3:-50}
WORKDIR="/home/jovyan/ai-pandit-app/data/btr-knowledge"

echo "=== PIPELINE START: $SOURCE_NAME ==="

# Step 1: Download PDF
PDF_FILE="$WORKDIR/chunks/${SOURCE_NAME}.pdf"
if [ ! -f "$PDF_FILE" ]; then
    echo "[1/4] Downloading..."
    wget -q -O "$PDF_FILE" "$SOURCE_URL" || {
        echo "Download failed, trying curl..."
        curl -sL "$SOURCE_URL" -o "$PDF_FILE"
    }
    echo "  Downloaded: $(wc -c < $PDF_FILE) bytes"
else
    echo "[1/4] Already downloaded"
fi

# Step 2: Extract text
TXT_FILE="$WORKDIR/chunks/${SOURCE_NAME}.txt"
echo "[2/4] Extracting text..."
python3 -c "
import fitz
doc = fitz.open('$PDF_FILE')
with open('$TXT_FILE', 'w') as f:
    for i, page in enumerate(doc):
        text = page.get_text()
        f.write(f'\n=== PAGE {i+1} ===\n')
        f.write(text)
doc.close()
total_lines = sum(1 for _ in open('$TXT_FILE'))
print(f'  Extracted: {total_lines} lines')
"

# Step 3: Calculate chunks
TOTAL_LINES=$(wc -l < "$TXT_FILE")
LINES_PER_CHUNK=$((CHUNK_SIZE * 60))  # ~60 lines per page average
NUM_CHUNKS=$(( (TOTAL_LINES + LINES_PER_CHUNK - 1) / LINES_PER_CHUNK ))
echo "[3/4] Splitting into $NUM_CHUNKS chunks..."

# Step 4: Split
split -l $LINES_PER_CHUNK "$TXT_FILE" "$WORKDIR/chunks/${SOURCE_NAME}_chunk_"
for f in "$WORKDIR/chunks/${SOURCE_NAME}_chunk_"*; do
    mv "$f" "${f}.txt"
done

echo "[4/4] Done! Created $NUM_CHUNKS chunks"
echo ""
echo "Chunks ready in: $WORKDIR/chunks/${SOURCE_NAME}_chunk_*.txt"
echo "PIPELINE COMPLETE"
