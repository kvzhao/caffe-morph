#!/usr/bin/env sh
# This script converts the morph data into leveldb format.

EXAMPLES=../../build/examples/morph
DATA=../../data/MORPH_nonCommercial

echo "Creating leveldb..."

rm -rf morph-leveldb
rm -rf morph-train-leveldb
rm -rf morph-test-leveldb

mkdir morph-train-leveldb
mkdir morph-test-leveldb

$EXAMPLES/convert_morph_data.bin $DATA/morph-train-image.bin $DATA/morph-train-label.bin morph-train-leveldb 20000
$EXAMPLES/convert_morph_data.bin $DATA/morph-test-image.bin $DATA/morph-test-label.bin morph-test-leveldb 8000

echo "Done."
