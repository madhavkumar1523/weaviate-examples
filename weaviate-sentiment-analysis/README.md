# Sentiment analysis of sentences

This example contains Sentiment Analysis data, retrieved from [data.world](https://data.world/crowdflower/sentiment-analysis-in-text).
The transformer model [`sentence-transformers-paraphrase-multilingual-MiniLM-L12-v2`](https://huggingface.co/sentence-transformers/paraphrase-xlm-r-multilingual-v1) is connected to Weaviate as [vectorization module](https://www.semi.technology/developers/weaviate/current/modules/text2vec-transformers.html) (see `docker-compose.yaml` file).

## How to use

1. Start up Weaviate: `docker-compose up -d`. Once completed, Weaviate is running on [`http://localhost:8080`]().
2. Install requirements: `pip install -r requirements.txt`
3. Run `python import.py` to import 5000 comments to Weaviate.
4. Run `python script.py` to enter sentences and to know the sentiment behind them.