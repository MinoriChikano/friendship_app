server '52.196.151.7', user: 'app', roles: %w{app db web}
set :ssh_options, keys: '/Users/konnominoru/.ssh/id_rsa'