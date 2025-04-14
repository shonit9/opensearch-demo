1. Run the project using below command
docker-compose up -d

2. Verify installation
curl -XGET https://localhost:9200 -u 'admin:admin' --insecure

3. Create index using below file
create-index.sh

4. Run below command to load data
python load_data.py

5. Implement Search Functionality
execute basic-search.sh

6. Advanced Search with Filters
execute advanced-search.sh

7. Front end/ web page
my.html

8. Visualize Data in OpenSearch Dashboards
Access OpenSearch Dashboards at http://localhost:5601

9. Advanced Features
execute implement-synonym.sh
execute autocomplete.sh
