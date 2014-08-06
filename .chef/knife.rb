current_dir = File.dirname(__FILE__)
log_level                :info
log_location             STDOUT
node_name                'todd'
client_key               "#{current_dir}/todd.pem"
validation_client_name   'chef-validator'
validation_key           "#{current_dir}/chef-validator.pem"
chef_server_url          'https://10.0.1.240'
syntax_check_cache_path  "#{current_dir}/syntax_check_cache"
cache_type               'BasicFile'
cache_options( :path => "#{ENV['HOME']}/.chef/checksums" )
cookbook_path            ["#{current_dir}/../cookbooks"]
cookbook_copyright       "Todd Pigram"
cookbook_license         "apachev2"
cookbook_email           "todd@toddpigram.com"
