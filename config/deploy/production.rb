server '172.31.37.250', user: 'app', roles: %w{app db web}
set :ssh_options, keys: '/Users/konnominoru/.ssh/id_rsa'