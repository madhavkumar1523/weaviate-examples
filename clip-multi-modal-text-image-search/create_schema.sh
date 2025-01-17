#!/bin/bash

while ! curl --fail -o /dev/null -s http://localhost:8080/v1/.well-known/ready; do
  echo "Waiting for Weaviate to be ready..."
  sleep 1;
done


curl \
    -X POST \
    -H "Content-Type: application/json" \
    -d '{
      "class": "MultiModal",
      "moduleConfig": {
          "multi2vec-clip": {
              "imageFields": [
                  "image"
              ]
          }
      },
      "vectorIndexType": "hnsw",
      "vectorizer": "multi2vec-clip",
      "properties": [
        {
          "dataType": [
            "string"
          ],
          "name": "filename"
        },
        {
          "dataType": [
              "blob"
          ],
          "name": "image"
        }
      ]
    }' \
    http://localhost:8080/v1/schema
