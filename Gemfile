source "https://rubygems.org"

gemspec

gem "rails", "~> 4.0.0"

platforms :jruby do
  gem "activerecord-jdbc-adapter"
  gem "activerecord-jdbcsqlite3-adapter"
  gem "jruby-openssl"
end

platforms :ruby do
  gem "sqlite3"
end

# To use debugger
# gem 'debugger', :group => :development
