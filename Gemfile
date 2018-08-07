source "https://rubygems.org"
ruby "2.4.1"

gem "rails", "4.2.8"
gem "turbolinks"
gem "rake"

# activeadmin
gem "activeadmin", github: "activeadmin"
gem "activeadmin_addons"
gem "acts_as_list", "~> 0.9"
gem "active_admin-subnav"
gem "activeadmin-sortable"
gem "active_admin_import" , "3.0.0.pre"

# authorisation
gem "cancancan", "~> 1.10"

# storage
gem "pg"

gem "colorize"
# intercom
gem "intercom"
gem "intercom-rails"

# Validation / forms
gem "remotipart", "~> 1.2"
gem "simple_form"
gem "date_validator"
gem "validates_email_format_of"
gem "cocoon"

# cache store
gem "redis-rails"

# Aws s3 / carrierwave images
gem "aws-sdk", "~> 2"
gem "simpleidn" # punycode to unicode conversion needed for route53
gem "carrierwave-aws"
gem "carrierwave"
gem "mini_magick"

# Authentication
gem "devise", ">= 4.2.0"

# Oauth Facebook
gem "omniauth-oauth2", "~> 1.3.1"
gem "omniauth-facebook"
gem "omniauth-instagram"
gem "omniauth-google-oauth2"

gem 'koala'
# Read out mp3 info
gem "taglib-ruby"

# Presentation
gem "draper"
gem "money-rails"
gem 'font-awesome-rails', '>= 4.7.0.1'

# Rendering
gem "liquid"
gem "jbuilder"
gem "slim-rails"

# pagination
gem "kaminari"

# Error handling for amazon
gem "logstash-logger"

# country information
gem "carmen"

# payment provider
gem "adyen"

# Background workers
gem "whenever"
gem "sidekiq"
gem "sidekiq-failures"

# Sass using the libC compiler, prefixer for css vendors.
gem "sass-rails", require: false
gem "sassc-rails"
gem "autoprefixer-rails"

gem "uglifier"
gem "coffee-rails", "~> 4.1.0"
gem "jquery-rails"
gem "jquery-ui-rails"
gem "jquery-fileupload-rails"

# typekit integration
gem "httparty"

# wrapper for campaignmonitor
gem "createsend"
# Send Grid
gem "sendgrid-ruby"

gem "friendly_id", "~> 5.1.0"
gem "climate_control", "0.0.3"
# gem "ckeditor", "4.2.2"
gem "ckeditor", github: "galetahub/ckeditor"
gem "non-stupid-digest-assets"

# for easy properties
gem "dish", require: "dish/ext"

# server monitorring
gem "newrelic_rpm"
gem "appsignal"

# generate random stuff
gem "faker"

# browser detectino
gem "browser"

# pdf
gem "pdfkit"

# geocode ip to latlng
gem 'geoip'

# add markdown support
gem 'redcarpet'

# fontent assets
source "https://rails-assets.org" do
  gem "rails-assets-flexslider", "2.5.0"
  gem "rails-assets-slicknav", "1.0.5"
  gem "rails-assets-fancybox", "2.1.5"
  gem "rails-assets-jquery-nestable", "0.0.1"
  gem "rails-assets-spectrum", "1.8.0"
  gem "rails-assets-soundmanager2-297a20140901", "1.0.0"
  gem "rails-assets-bootstrap", "4.0.0.alpha.5"
  gem "rails-assets-tether", "1.3.7"
  gem "rails-assets-animate.css", "3.5.1"
  gem "rails-assets-select2", "4.0.2"
  gem "rails-assets-dropzone", "4.3.0"
  gem "rails-assets-infinite-scroll", "2.1.0"
  gem "rails-assets-jquery-autogrow-textarea", "1.0.3"
  gem "rails-assets-seiyria-bootstrap-slider", "9.5.1"
  gem "rails-assets-OwlCarousel2", "2.2.0"
  gem "rails-assets-remarkable-bootstrap-notify", "3.1.3"
  gem "rails-assets-malihu-custom-scrollbar-plugin", "3.1.5"
  gem "rails-assets-smalot-bootstrap-datetimepicker", "2.4.4"
  gem "rails-assets-handlebars", "4.0.8"
  gem "rails-assets-stellar", "0.6.2"
  gem "rails-assets-mediaelement", "3.2.4"
  gem 'rails-assets-bootstrap-tour', "0.11.0"
  gem "rails-assets-metisMenu", "2.7.0"
  gem "rails-assets-nanobar", "0.4.2"
  gem 'rails-assets-autogrow', "1.0.3"
  gem 'rails-assets-typedjs', "1.1.7"
end

group :production, :staging, :heroku do
  # webserver
  gem "puma"
  gem "puma_worker_killer"
end

group :development, :test do
  gem "pry"
  gem "byebug"
end

group :development do
  gem "derailed_benchmarks"
  gem "stackprof"
  gem "spring"
  gem "db_fixtures_dump"
  gem "xray-rails", "~> 0.2"
  gem "metric_fu"
  gem "better_errors"
  gem "binding_of_caller"
  gem "quiet_assets"
  #gem "bullet"
  gem "rails-erd", require: false
  gem "immigrant"
  gem "net-ssh"
end

group :test do
  gem "database_cleaner", '~> 1.5'
  gem "webmock"
  gem "launchy"
  gem "simplecov"
  gem "rspec-rails", "~> 3.5"
  gem "rspec-retry"
  gem "factory_girl_rails", '~> 4.7'
  gem "shoulda-matchers"
  gem "poltergeist"
  gem "selenium-webdriver"
  gem "timecop"
  gem "capybara", '~> 2.9.1'
  gem 'email_spec'
end
