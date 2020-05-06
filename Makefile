docs/cookbook.html: cookbook.ipynb
	jupyter nbconvert --to html --template removecollapsed cookbook.ipynb --output docs/cookbook.html
