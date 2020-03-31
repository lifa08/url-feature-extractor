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

The extracted features can be classified into two catogories:

- **url features**

	1. url_length
	2. is_blacklisted
	3. is_IPbased
	4. domain_age
	5. FreeURL_dot_cnt
	6. level_domain_cnt
	7. FQDN_length
	8. mld_length
	9. url_terms_cnt
	10 RDNRank
	11. domain_provider
	12. domain_valid_period

- **Page visit features**

	13. redirect_number
	14. landing_url
	15. title_term_cnt
	16. text_term_cnt
	17. iframe_number
	18. input_number
	19. image_number
	20. href_number
	21. mld_equals
	22. starting_mld_in_title
	23. starting_mld_in_text
	24. starting_mld_in_href_FreeURL
	25. landing_mld_in_title
	26. landing_mld_in_text
	27. landing_mld_in_href_FreeURL
	28. **Comparison features**
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

