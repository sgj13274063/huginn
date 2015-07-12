namespace :database_test do
  desc "Ping the database"
  task :ping do
    require 'active_record'
    require 'mysql2'
    ActiveRecord::Base.establish_connection
    ActiveRecord::Base.connection.verify!
  end
end
