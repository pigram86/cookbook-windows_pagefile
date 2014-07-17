current_dir = File.dirname(__FILE__)
log_level                :info
log_location             STDOUT
node_name                "pigram86"
client_key               "#{current_dir}/pigram86.pem"
validation_client_name   "pigtest-validator"
validation_key           "#{current_dir}/pigtest-validator.pem"
chef_server_url          "https://api.opscode.com/organizations/pigtest"
cache_type               'BasicFile'
cache_options( :path => "#{ENV['HOME']}/.chef/checksums" )
cookbook_path            ["#{current_dir}/../cookbooks"]
cookbook_copyright       "Todd Pigram"
cookbook_license         "apachev2"
cookbook_email           "todd@toddpigram.com"
