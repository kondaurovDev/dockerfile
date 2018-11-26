#### other:pdftk

This image contains pdftk utility to operate over pdf files

Reason to create image: https://askubuntu.com/questions/221962/how-can-i-extract-a-page-range-a-part-of-a-pdf

[![](https://images.microbadger.com/badges/image/kondaurov/other:pdftk.svg)](https://microbadger.com/images/kondaurov/other:pdftk "Get your own image badge on microbadger.com")
[![](https://images.microbadger.com/badges/version/kondaurov/other:pdftk.svg)](https://microbadger.com/images/kondaurov/other:pdftk "Get your own version badge on microbadger.com")

Bring your pdf files inside container and run pdftk as you like

This example extracts pages 2,3 and saves it to outfile.pdf

	docker run --rm \
		-v $(PWD):/files \
		kondaurov/other:pdftk \
		/files/example/three_page.pdf cat 2-3 output /files/target/outfile.pdf
		
#### other:backup

[![](https://images.microbadger.com/badges/image/kondaurov/other:backup.svg)](https://microbadger.com/images/kondaurov/backup:pdftk "Get your own image badge on microbadger.com")
[![](https://images.microbadger.com/badges/version/kondaurov/other:backup.svg)](https://microbadger.com/images/kondaurov/backup:pdftk "Get your own version badge on microbadger.com")

Add your directory to tar archive with Dockerfile

This saves tar into $RESULT_DIR folder

	docker run --rm \
		-v $(PWD):/pwd \
		-e MODE=local \
		-e DOCKERFILE_PATH=/pwd/example/Dockerfile \
		-e BACKUP_DIR=/pwd/example/sub \
		-e RESULT_DIR=/pwd/target \
		-e FILENAME=test \
		kondaurov/other:backup
		
This one uploads tar to server

		--net=host \
		-v $(PWD):/pwd \
		-e DOCKERFILE_PATH=/pwd/example/Dockerfile \
		-e BACKUP_DIR=/pwd/example/sub \
		-e CRED=admin:admin123 \
		-e FILENAME=musuperfile \
		-e URL=http://localhost:8081/repository/raw-hosted-snapshots \
		-e FILENAME=test \
		kondaurov/other:backup
