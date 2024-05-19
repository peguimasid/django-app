all:
	docker compose up

clean:
	docker compose down --rmi all -v && rm -rf data

re: clean all

logs:
	docker compose logs -f

# Utils

# Create super user
csu:
	docker exec -it django-app python manage.py createsuperuser --username=admin --email=admin@admin.com

# Start only the postgres database
db:
	docker compose start db

# Stop only the postgres database
dbdown:
	docker compose stop db
