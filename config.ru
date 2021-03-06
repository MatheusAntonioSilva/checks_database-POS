require_relative './config/environment'

use ::Rack::MethodOverride
run Route

if ::ActiveRecord::Base.connection.migration_context.needs_migration?
  raise 'Migrations are pending. Run `rake db:migrate` to resolve the issue.'
end
