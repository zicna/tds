require './config/environment'

# if ActiveRecord::Migrator.needs_migration?
#   raise 'Migrations are pending. Run `rake db:migrate` to resolve the issue.'
# end

#Without it Sinatra won't know what do with input type="hidden" value="patch" name="_method"
use Rack::MethodOverride

run ApplicationController
use DispatcherController
use TeamController
use DriverController
use LoadController