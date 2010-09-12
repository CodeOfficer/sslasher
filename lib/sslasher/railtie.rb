require 'sslasher'
require 'rails'

module Sslasher
  class Railtie < Rails::Railtie
    rake_tasks do
      load "tasks/sslasher.rake"
    end
  end
end