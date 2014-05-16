J=bundle exec jekyll

all: site

site:
	$J build
	chmod -R a+rx ./_site/

clean:
	rm -rf _site/

local:
	$J serve --port=9393 --watch --drafts
