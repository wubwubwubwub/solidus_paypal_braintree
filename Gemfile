source 'https://rubygems.org'

branch = ENV.fetch("SPREE_BRANCH", "3-1-stable")
gem 'spree', github: 'spree/spree', branch: branch

if branch == 'master' || branch >= "v2.3"
  gem "rails-controller-testing", group: :test
  gem 'rails', '~> 5.1.0' # HACK: broken bundler dependency resolution
elsif branch >= "v2.0"
  gem "rails-controller-testing", group: :test
  gem 'rails', '~> 5.0.3' # HACK: broken bundler dependency resolution
else
  gem "rails", '~> 4.2.0' # HACK: broken bundler dependency resolution
  gem "rails_test_params_backport", group: :test
end

# Provides basic authentication functionality for testing parts of your engine
gem 'spree_auth_devise', '~> 1.0'

# Asset compilation speed
gem 'execjs-fastnode'
gem 'sassc-rails', platforms: :mri

group :development, :test do
  gem 'listen'
  gem 'launchy'
  gem "pry-rails"
  gem 'selenium-webdriver', require: false
  gem 'chromedriver-helper', require: false
end

gemspec
