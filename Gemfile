source 'https://rubygems.org'

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?("/")
  "https://github.com/#{repo_name}.git"
end


gem 'rails', '~> 5.1.0'
gem 'faker'
gem 'bootstrap-sass', '3.3.6'
gem 'bootstrap-will_paginate', '0.0.10'
gem 'bcrypt-ruby', '3.1.5', :require => 'bcrypt'
gem 'jenkins_api_client'
gem 'ruby-trello'
gem 'puma'
gem 'sass-rails', '~> 5.0'
gem 'uglifier', '>= 1.3.0'
gem 'will_paginate',           '3.1.0'
gem 'coffee-rails', '~> 4.2'
gem 'jquery-rails' 
gem 'jbuilder', '~> 2.5'


group :development, :test do
  gem 'sqlite3', '1.3.12'
  gem 'byebug',  '9.0.0', platform: :mri
end

group :development do
  gem 'web-console', '>= 3.3.0'
  gem 'listen', '>= 3.0.5', '< 3.2'
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
  gem 'railroady'
end

group :test do
  gem 'rails-controller-testing', '0.1.1'
  gem 'minitest-reporters',       '1.1.9'
  gem 'guard',                    '2.13.0'
  gem 'guard-minitest',           '2.4.4'
end

gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
gem 'wdm' , '>= 0.1.0' , platforms: [:mingw, :mswin, :x64_mingw ]
gem 'win32-process', platforms: [:mingw, :mswin, :x64_mingw ]
gem 'windows-pr', platforms: [:mingw, :mswin, :x64_mingw ]