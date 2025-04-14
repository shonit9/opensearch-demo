curl -XPUT "https://localhost:9200/books" -H 'Content-Type: application/json' -u 'admin:admin' --insecure -d'
{
  "settings": {
    "index": {
      "number_of_shards": 1,
      "number_of_replicas": 0
    }
  },
  "mappings": {
    "properties": {
      "title": { "type": "text" },
      "author": { "type": "text" },
      "description": { "type": "text" },
      "published_date": { "type": "date" },
      "categories": { "type": "keyword" },
      "rating": { "type": "float" },
      "pages": { "type": "integer" },
      "language": { "type": "keyword" },
      "isbn": { "type": "keyword" }
    }
  }
}'
