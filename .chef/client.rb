log_level        :info
log_location     STDOUT

chef_server_url  "https://api.opscode.com/organizations/pigram"
validation_client_name "pigram-validator"
client_key        "c:/chef/client.pem"
validation_key    "c:/chef/validation.pem"

file_cache_path   "c:/chef/cache"
file_backup_path  "c:/chef/backup"
cache_options     ({:path => "c:/chef/cache/checksums", :skip_expires => true})

# Using default node name (fqdn)
