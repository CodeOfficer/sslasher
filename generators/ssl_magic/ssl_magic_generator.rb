require 'rails/generators'

class SslMagicGenerator < Rails::Generators::NamedBase

	def self.source_root
		@_ssl_magic_source_root ||= File.expand_path(File.join(File.dirname(__FILE__), 'templates'))
	end

  def install
    template('ssl_magic.erb', 'config/ssl_magic.conf') # copy foo.rb to lib/
  end

end
