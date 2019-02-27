source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '2.4.1'

gem 'rails', '~> 5.2.2'
gem 'pg', '>= 0.18', '< 2.0'
gem 'puma', '~> 3.11'
gem 'bootsnap', '>= 1.1.0', require: false
gem 'faraday'
gem 'bcrypt-ruby', '~> 3.1.2'
gem 'figaro'
gem 'httparty'
gem 'fast_jsonapi'
gem 'nokogiri'
gem 'rack-cors', require: 'rack/cors'
gem 'travis'



group :development, :test do
  gem 'figaro'
  gem 'simplecov'
  gem 'rspec-rails'
  gem 'capybara'
  gem 'launchy'
  gem 'pry'
  gem 'shoulda-matchers'
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
  gem 'vcr'
  gem 'webmock'
  gem 'simplecov'
  gem 'awesome_print'
end

group :development do
  gem 'listen', '>= 3.0.5', '< 3.2'
end


# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
