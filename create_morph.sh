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

$EXAMPLES/convert_morph_data.bin $DATA/morph-image-train.bin $DATA/morph-label-train.bin morph-train-leveldb 44107
$EXAMPLES/convert_morph_data.bin $DATA/morph-image-test.bin $DATA/morph-label-test.bin morph-test-leveldb 11027

echo "Done."
