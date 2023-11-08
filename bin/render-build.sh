#!/usr/bin/env bash
# exit on error
set -o errexit

bundle install
bundle exec rake assets:precompile
bundle exec rake assets:clean
bundle exec rake db:migrate
bundle exec rake ffcrm:setup:admin USERNAME=peramali PASSWORD=peramali@123 EMAIL=admin@example.com