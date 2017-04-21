# Add your own tasks in files placed in lib/tasks ending in .rake,
# for example lib/tasks/capistrano.rake, and they will automatically be available to Rake.

require_relative 'config/application'

Rails.application.load_tasks



namespace :seedme do
  desc "seedme creates a seeds file based on an application's models and those model's column type "
  task :go => :environment do
    require 'active_support/inflector'
    require 'rails/engine'

    blue = File.expand_path('../', __FILE__)
    fil_e = File.join(blue, 'db/schema.rb')
    fi_le = File.join(blue, 'db/seeds.rb')
    s = File.open(fil_e)
    File.open(fi_le, 'w') {|file| file.truncate(0) }

    class_singular = ""


    s.each do |line|
    	if line.match(/(?<=create_table\s").*?(?=")/)
    		classes = line.match(/(?<=create_table\s").*?(?=")/)[0]
    		class_singular = classes.singularize.capitalize
    		p class_singular

    		line.match(/(?<=\s\st.)[a-z]{1,13}/) == "string"
    			p "pickles"

    File.open(fi_le, 'a') { |file|
      file.puts "User.destroy_all"
      file.puts "10.times do \n     " +
      	class_singular + ".create!(username: Faker::Name.first_name)
    end"
    }
    		end




    end
  end
end
