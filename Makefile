J=bundle exec jekyll

all: site

site:
	$J build
	chmod -R a+rx ./_site/

clean:
	rm -rf _site/

server:
	$J serve --port=4000 --watch --drafts
