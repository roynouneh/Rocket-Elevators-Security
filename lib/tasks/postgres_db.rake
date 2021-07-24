require 'pg'
namespace :postgres_db do
  #namespace :import do

  task load_config: :environment do
    @postgres_env = "postgres_#{Rails.env}"
    @schema_path = File.join(ActiveRecord::Tasks::DatabaseTasks.db_dir, "postgres_schema.rb")
  end

  desc "Creates the Postgres database from config/database.yml for the current RAILS_ENV."
  task create: :load_config do
    ActiveRecord::Tasks::DatabaseTasks.create_current(@postgres_env)
  end

  desc "Migrate the Postgres DB"
  task migrate: :load_config do        
    @postgres_env = "postgres_#{Rails.env}"
    db_config = ActiveRecord::Base.configurations[@postgres_env]
    pp db_config
    connection = ActiveRecord::Base.establish_connection(db_config).connection
#    ActiveRecord::Migrator.migrate("db/dwh/migrate")
    ActiveRecord::Tasks::DatabaseTasks.migrate

    #    ActiveRecord::Tasks::DatabaseTasks.migrate("db/dwh/migrate")
    #[:load config]
  end

  desc "Drops the Postgres database from config/database.yml for the current RAILS_ENV."
  task drop: [:load_config] do
    ActiveRecord::Tasks::DatabaseTasks.drop_current(@postgres_env)
  end

  namespace :schema do

    desc "Creates a db/schema.rb file that is portable against any DB supported by Active Record"
    task dump: :load_config do
      require "active_record/schema_dumper"
      @postgres_env = "postgres_#{Rails.env}"        
      db_config = ActiveRecord::Base.configurations[@postgres_env]
      connection = ActiveRecord::Base.establish_connection(db_config).connection        

      File.open(@schema_path, "w:utf-8") do |file|
        ActiveRecord::SchemaDumper.dump(connection, file)
      end

    end

    desc "Loads a schema.rb file into the database"
    task load: :load_config do
      ActiveRecord::Tasks::DatabaseTasks.load_schema_current(:ruby, @schema_path, @reporting_env)
    end

  end

  #desc "Loads the seed data from db/postgres_seeds.rb"
#  task :seed do
#    seeds_file = File.join(ActiveRecord::Tasks::DatabaseTasks.db_dir, "postgres_seeds.rb")
#    load(seeds_file)
#  end
  #

  #PostgresRecord.connection.instance_exec

  task FactQuote: :environment do
  FactQuote.delete_all
  Quote.all.each do |q|
    FactQuote.create!(
    :quote_id => q.id,
    :creation => q.created_at,
    :company_name => q.company_name,
    :email => q.email,
    :nbelevator => q.number_of_elevators
    )
  end
  end

  task FactContact: :environment do
    FactContact.delete_all
    Lead.all.each do |l|
      FactContact.create(
        :contact_id => l.id,
        :creation => l.created_at,
        :company_name => l.company_name,
        :email => l.email,
        :project_name => l.project_name
      )
    end
  end

  task FactElevator: :environment do
    FactElevator.delete_all
    Elevator.all.each do |e|
      FactElevator.create(
        :serial_num => e.serial_number,
        :date_of_commish => e.date_of_commissioning,
        :building_id => e.column.battery.building.id,
        :customer_id => e.column.battery.building.id,
        :building_city => e.column.battery.building.address.city
      )
    end
  end

  task DimCustomer: :environment do
    DimCustomer.delete_all
    Customer.all.each do |c|
      DimCustomer.create(
        :creation_date => c.customer_creation_date,
        :company_name => c.company_name,
        :company_contact_full => c.contact_full_name,
        :company_contact_email => c.contact_email,
        :nbelevators => 4, #double check
        :customer_city => c.address.city
      )
    end
  end

  #################### COMMANDS TO FILL POSTGRES DB ####################
  # rake postgres_db:FactQuote
  # rake postgres_db:FactContact
  # rake postgres_db:FactElevator
  # rake postgres_db:DimCustomer
  #######################################################################

  ######################## DATAWAREHOUSE QUERIES ########################

  task QueryA: :load_config do
    @postgres_env = "postgres_#{Rails.env}"
    db_config = ActiveRecord::Base.configurations[@postgres_env]
    connection = ActiveRecord::Base.establish_connection(db_config).connection
    pp connection.execute("SELECT COUNT(DISTINCT contact_id) as number_of_contact_requests, EXTRACT(MONTH from creation) as month_request FROM fact_contacts GROUP BY month_request;")
  end

  task QueryB: :load_config do
    @postgres_env = "postgres_#{Rails.env}"
    db_config = ActiveRecord::Base.configurations[@postgres_env]
    connection = ActiveRecord::Base.establish_connection(db_config).connection
    pp connection.execute("SELECT COUNT(DISTINCT quote_id) as number_of_quote_requests, EXTRACT(MONTH from creation) as month_request FROM fact_quotes GROUP BY month_request;")
  end

  task QueryC: :load_config do
    @postgres_env = "postgres_#{Rails.env}"
    db_config = ActiveRecord::Base.configurations[@postgres_env]
    connection = ActiveRecord::Base.establish_connection(db_config).connection
    pp connection.execute("SELECT COUNT(serial_num) as number_of_elevators, customer_id FROM fact_elevators GROUP BY customer_id ORDER BY customer_id;")
  end
  
  #######################################################################

  #################### QUERY COMMANDS ####################
  # rake postgres_db:QueryA
  # rake postgres_db:QueryB
  # rake postgres_db:QueryC
  #######################################################################


end


#for each
#pg gem references

# PostgresDbBase
# PostgresDbBase.connection()
  #PG::connect.open(:dbname => 'postgres') #connecting to codeboxx





#end
