curl -XGET "https://localhost:9200/books/_search" -H 'Content-Type: application/json' -u 'admin:admin' --insecure -d'
{
  "query": {
    "bool": {
      "must": [
        {
          "match": {
            "description": "American"
          }
        }
      ],
      "filter": [
        {
          "range": {
            "rating": {
              "gte": 4.0
            }
          }
        },
        {
          "term": {
            "language": "English"
          }
        }
      ]
    }
  },
  "aggs": {
    "categories": {
      "terms": {
        "field": "categories"
      }
    },
    "average_pages": {
      "avg": {
        "field": "pages"
      }
    }
  }
}'
