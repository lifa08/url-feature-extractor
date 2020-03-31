# url-feature-extractor

Url feature extractor extracts from a given URL potential features that might be able to indicate that the given url is malicious.


## Features
The extracted features can be classified into three catogories:

- url based features
- page visit features
	- comparison features


## To do
* Use unit test framework to test the code more rigoulously
* Extract more features
* Figure out how to visit a malicous site in a safe way, so can parse the visit page features.
* Find dataset that contains a url and whether the url is malicous
* Experiment different machine learning classification models and select a suitable one
* Train the selected model in AWS and deploy the endpoint there
* Develop a web application to provide url online checking service by using AWS lamda and API gateway

