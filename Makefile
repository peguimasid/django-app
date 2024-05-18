all:
	docker compose up

clean:
	docker compose down --rmi all -v && rm -rf data

re: clean all

logs:
	docker compose logs -f
