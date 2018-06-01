#!/bin/bash

# The̍h-tiāu ip
echo "select id,word,other,chinese,exp,example,username,modtime,han,english,page from dic_can;" | \
  cat $1 - | \
  sed '/CREATE INDEX work_dic_can ON dic_can USING btree (word);/d' | \
  sed '/ALTER TABLE/{N;d;}' | \
  sqlite3 -header -csv | \
  cat > dict.csv

echo 'Tī dict.csv.'