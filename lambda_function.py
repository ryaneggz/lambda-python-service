import json
import requests  # External dependency
from pprint import pprint

def lambda_handler(event, context):
    # Example: Make an HTTP GET request to the GitHub API
    try:
        response = requests.get('https://api.github.com')
        response.raise_for_status()  # Raise an error for bad status codes
        data = response.json()
    except requests.RequestException as e:
        # If there's an error, return an error message with a 500 status code
        return {
            'statusCode': 500,
            'body': json.dumps({'error': str(e)})
        }
    
    # Return the data from the API call as the response body
    return {
        'statusCode': 200,
        'body': data
    }

if __name__ == "__main__":
    pprint(lambda_handler({}, {}))