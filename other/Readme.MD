#### other:pdftk

This image contains pdftk utility to operate over pdf files

Reason to create image: https://askubuntu.com/questions/221962/how-can-i-extract-a-page-range-a-part-of-a-pdf

[![](https://images.microbadger.com/badges/image/kondaurov/other:pdftk.svg)](https://microbadger.com/images/kondaurov/other:pdftk "Get your own image badge on microbadger.com")
[![](https://images.microbadger.com/badges/version/kondaurov/other:pdftk.svg)](https://microbadger.com/images/kondaurov/other:pdftk "Get your own version badge on microbadger.com")

Bring your pdf files inside container and run pdftk as you like

This example extracts pages 2,3 and saves it to outfile.pdf

Don't forget run container with -u 1000:1000 otherwise generated files will be owned by root

	docker run --rm \
		-v $(PWD):/files \
		-u 1000:1000 \
		kondaurov/other:pdftk \
		/files/example/three_page.pdf cat 2-3 output /files/target/outfile.pdf

