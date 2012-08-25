J=bundle exec jekyll

all: site

site:
		$J
			chmod -R a+rx ./_site/

clean:
		rm -rf _site/

server:
		$J --server 4000 --auto --no-lsi

new:
		./new_post.sh

drafts:
		@grep -lie '^published: false' _posts/*