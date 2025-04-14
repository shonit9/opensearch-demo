curl -XPUT "https://localhost:9200/books/_settings" -H 'Content-Type: application/json' -u 'admin:admin' --insecure -d'
{
  "index": {
    "analysis": {
      "filter": {
        "book_synonyms": {
          "type": "synonym",
          "synonyms": [
            "novel, book, publication",
            "writer, author"
          ]
        }
      },
      "analyzer": {
        "book_analyzer": {
          "tokenizer": "standard",
          "filter": [
            "lowercase",
            "book_synonyms"
          ]
        }
      }
    }
  }
}'
