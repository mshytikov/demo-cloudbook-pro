require 'rubygems'
require 'bundler/setup'

require 'sinatra'

set :bind, '0.0.0.0'

get '/' do
  "Hello from Ruby #{RUBY_VERSION}"
end
