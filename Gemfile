source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '2.6.7'
gem 'rails', '~> 6.1.4'
# Use postgresql as the database for Active Record
gem 'pg'
# Use Puma as the app server
gem 'puma', '~> 5.0'
gem 'sass-rails', '>= 6'
gem 'webpacker', '~> 5.0'
gem 'jbuilder', '~> 2.7'
# Use Redis adapter to run Action Cable in production
# gem 'redis', '~> 4.0'
# gem 'bcrypt', '~> 3.1.7'
# gem 'image_processing', '~> 1.2'
gem 'bootsnap', '>= 1.4.4', require: false
group :development, :test do

  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
end
group :development do
  gem 'web-console', '>= 4.1.0'
  gem 'rack-mini-profiler', '~> 2.0'
end
group :test do
  gem 'capybara', '>= 3.26'
  gem 'selenium-webdriver'

  gem 'webdrivers'
end
  gem 'materialize-sass'
gem 'rails_12factor', group: :production
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
gem 'devise', '~> 4.2'
gem 'omniauth', '~> 2.0', '>= 2.0.4'
gem 'activeadmin', github: 'gregbell/active_admin'  # Need to point at this github repo for rails 4 compat. See answer from paulcarvill here: https://github.com/gregbell/active_admin/issues/1963
gem 'active_skin'
gem 'redcarpet', '~> 3.5', '>= 3.5.1'
gem 'coderay', '~> 1.1', '>= 1.1.3'
gem 'friendly_id', '~> 5.4', '>= 5.4.2'
gem 'active_admin-sortable_tree', '~> 2.1'
