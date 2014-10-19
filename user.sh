#!/usr/bin/env bash

git clone https://github.com/sstephenson/rbenv.git ~/.rbenv
echo 'export PATH="$HOME/.rbenv/bin:$PATH"' >> ~/.bash_profile
echo 'eval "$(rbenv init -)"' >> ~/.bash_profile
source ~/.bash_profile
git clone https://github.com/sstephenson/ruby-build.git ~/.rbenv/plugins/ruby-build
rbenv install 2.1.2
rbenv global 2.1.2
gem install bundler rails
git clone https://github.com/ploslabs/rich_citations.git
cd rich_citations
bundle install
cp config/database.example.yml config/database.yml
bundle exec rake db:migrate
bundle exec rails server
