curl -XGET "https://localhost:9200/books/_search" -H 'Content-Type: application/json' -u 'admin:admin' --insecure -d'
{
  "query": {
    "match": {
      "title": "Gatsby"
    }
  }
}'
