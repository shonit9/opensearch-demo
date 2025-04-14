import requests
from requests.auth import HTTPBasicAuth
import json

# Sample book data
books = [
    {
        "title": "The Great Gatsby",
        "author": "F. Scott Fitzgerald",
        "description": "A story of wealth, love, and the American Dream in the 1920s.",
        "published_date": "1925-04-10",
        "categories": ["Fiction", "Classic"],
        "rating": 4.2,
        "pages": 180,
        "language": "English",
        "isbn": "9780743273565"
    },
    {
        "title": "To Kill a Mockingbird",
        "author": "Harper Lee",
        "description": "A powerful story of racial injustice and moral growth in the American South.",
        "published_date": "1960-07-11",
        "categories": ["Fiction", "Classic"],
        "rating": 4.8,
        "pages": 281,
        "language": "English",
        "isbn": "9780061120084"
    },
    # Add more books...
]

base_url = "https://localhost:9200/books/_doc"
auth = HTTPBasicAuth('admin', 'admin')

for i, book in enumerate(books):
    response = requests.post(
        f"{base_url}/{i+1}",
        auth=auth,
        json=book,
        verify=False
    )
    print(f"Indexed book {i+1}: {response.status_code}")
