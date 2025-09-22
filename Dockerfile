FROM ruby:3.3.4

RUN gem install jekyll -v '3.10.0'

WORKDIR /usr/src/app

# docker build -f Dockerfile -t githubpages-jekyll:3.10.0 . && docker run -p 4200:4200 -p 35729:35729 -v .:/usr/src/app --env JEKYLL_ENV=production --env PAGES_REPO_NWO=elixir-uk/elixir-ds-handbook --name jekyll --rm githubpages-jekyll:3.10.0 /bin/bash -c "bundle config path 'vendor/bundle' --local && bundle install && bundle exec jekyll serve --host 0.0.0.0 --port 4200 --livereload --baseurl \"\""