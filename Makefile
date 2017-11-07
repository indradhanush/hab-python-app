install:
	pip install -r requirements.txt

run: install
	python manage.py runserver
