APP_ROOT = pwd
HOME_DIR = "#{ `echo $HOME` }".strip

namespace :sslasher do

	desc 'Create a self-signed certificate in ~/.ssl'
	task :create_certificate do
		puts "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
		mkdir_p "#{HOME_DIR}/.ssl"
		cd "#{HOME_DIR}/.ssl"
		rm Dir.glob('sslasher.*')
		sh "openssl req -new -x509 -nodes -days 365 -keyout sslasher.key -out sslasher.csr"
		cd  "#{APP_ROOT}"
		puts "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
	end

	desc 'Create a sslasher.conf in Rails.root/config for Nginx'
	task :create_config, :port do |t, args|
		PROXY_PORT = args.port || 3000
		USER = "#{`id -un`}".strip
		GROUP = "#{`id -gn`}".strip
		file_in = File.read(File.expand_path("../../templates", __FILE__) + "/sslasher.conf.erb")
		file_out = File.open(APP_ROOT + "/config/sslasher.conf", "w") do |f|
			f.puts ERB.new(file_in).result(binding)
		end
	end

end

