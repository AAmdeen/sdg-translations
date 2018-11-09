all: clean test build

clean:
		rm -fr _site

test:
		python scripts/check_translations.py

build:
		python3 scripts/build_translations.py
		python3 scripts/build_contexts.py
		python3 scripts/export_languages.py
		bundle exec jekyll build

serve:
		bundle exec jekyll serve --skip-initial-build
