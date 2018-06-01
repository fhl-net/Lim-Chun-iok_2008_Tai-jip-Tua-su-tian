#!/bin/bash

# The̍h-tiāu ip
echo "select id,word,other,chinese,exp,example,username,modtime,han,english,page from dic;" | \
  cat $1 - | \
  sed '/CREATE INDEX .* ON /d' | \
  sed '/ALTER TABLE/{N;d;}' | \
  sqlite3 -header -csv | \
  cat > dict.csv

echo 'Tī dict.csv.'