run-env:
	docker-compose up -d

generate-config:
	paster make-config --no-interactive ckan production.ini

init-db:
	paster --plugin=ckan db init -c production.ini

start-ckan:
	paster serve production.ini
