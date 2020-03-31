# url-feature-extractor

This url feature extractor extracts from a given URL potential features that might be able to indicate whether the given url is malicious or not.


## Usage

```git clone git@github.com:lifa08/url-feature-extractor.git```

```cd url-feature-extractor/```

```docker-compose up``

## Technologies and python libraries

- Dockerized Jupyter
- Pandas
- requests
- tldextract
- pysafebrowsing
- python-whois
- html2text
- lxml

## Features

This url structure image might help to understand what the following features mean.

![url strcture image](url_structure.png) 

- FQDN: Fully Qualified Domain Name
- mld: main level domain
- RDN: Registered Domain Name

The 36 extracted features can be classified into two catogories:

- **url features**

	* url_length
	* is_blacklisted
	* is_IPbased
	* domain_age
	* FreeURL_dot_cnt
	* level_domain_cnt
	* FQDN_length
	* mld_length
	* url_terms_cnt
	* RDNRank
	* domain_provider
	* domain_valid_period

- **Page visit features**

	* redirect_number
	* landing_url
	* title_term_cnt
	* text_term_cnt
	* iframe_number
	* input_number
	* image_number
	* href_number
	* mld_equals
	* starting_mld_in_title
	* starting_mld_in_text
	* starting_mld_in_href_FreeURL
	* landing_mld_in_title
	* landing_mld_in_text
	* landing_mld_in_href_FreeURL
	* **Comparison features**
		* hyper_link_jaccard
		* hyper_link_mld_jaccard
		* ss_jaccard
		* ss_url_jaccard
		* ss_url_mld_jaccard
		* img_url_jaccard
		* img_url_mld_jaccard
		* title_jaccard
		* is_hompage_linked


## To do
* Use unit test framework to test the code more rigoulously
* Extract more features
* Figure out how to visit a malicous website in a safe way, so can parse the visit page features.
* Find a dataset that contains a url and a lable that tells whether the given url is malicous or not
* Experiment different machine learning classification models and select a suitable one
* Train the selected model in AWS and deploy the corresponding endpoint there
* Develop a web application to provide url online checking service by using AWS lamda and API gateway

