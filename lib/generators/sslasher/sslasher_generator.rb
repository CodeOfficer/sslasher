class SslasherGenerator < Rails::Generators::NamedBase

	def self.source_root
		@_sslasher_source_root ||= File.expand_path(File.join(File.dirname(__FILE__), 'templates'))
	end

  def install
    template('sslasher.erb', 'config/sslasher.conf')
  end

end
