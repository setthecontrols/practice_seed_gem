# a = File.open("db/schema.rb")
# a.each do |out|
# if out.scan(/\s\s\s\st.[a-z]{1,12}\s{1,6}"(.*?)\"/)
#     if out.scan(/\s\s\s\st.[a-z]{1,12}\s{1,6}"(.*?)\"/).join(', ') == 'created_at' || out.scan(/\s\s\s\st.[a-z]{1,12}\s{1,6}"(.*?)\"/).join(', ') == 'updated_at'
#     else
#         :<%= out.scan(/\s\s\s\st.[a-z]{1,12}\s{1,6}"(.*?)\"/).join(', '),
#     end
# elsif out.scan(/\s\s\s\st.[a-z]{1,12}\s{1,6}"(.*?)\"\n\s\send/)%>
#     if out.scan(/\s\s\s\st.[a-z]{1,12}\s{1,6}"(.*?)\"\n\s\send/).join(', ') == 'created_at' || out.scan(/\s\s\s\st.[a-z]{1,12}\s{1,6}"(.*?)\"\n\s\send/).join(', ') == 'updated_at'
#     else
#         :<%= out.scan(/\s\s\s\st.[a-z]{1,12}\s{1,6}"(.*?)\"\n\s\send/).join(', ')</br>
#     end
# end
# end
# <!-- \s\s\s\st.[a-z]{1,12}\s{1,6}"(.*?)\" - regex for t.---------- "????" -->
# <!-- \s\s\s\st.[a-z]{1,12}\s{1,6}"(.*?)\"\n\s\send" - regex for " end -->


require 'active_support/inflector'
require 'rails/engine'
# Dir[File.join(RAILS_ROOT, 'vendor', 'plugins', '*')]

fi = File.join(RAILS_ROOT,'db', 'schema.rb')
s = File.open[fi]

class_singular = ""


s.each do |line|
	if line.match(/(?<=create_table\s").*?(?=")/)
		classes = line.match(/(?<=create_table\s").*?(?=")/)[0]
		class_singular = classes.singularize.capitalize
		p class_singular

	end
		if line.match(/(?<=\s\st.)[a-z]{1,13}/) == "string"
			p "pickles"

		end


	# if line.scan(/\s\s\s\s\s\s\st.[a-z]{1,13}/) ==

	# if line.scan(/\s\s\s\s\s\s\st.[a-z]{1,13}/) == 

	# if line.scan(/\s\s\s\s\s\s\st.[a-z]{1,13}/) == 

	# if line.scan(/\s\s\s\s\s\s\st.[a-z]{1,13}/) == 

	# if line.scan(/\s\s\s\s\s\s\st.[a-z]{1,13}/) == 

	# if line.scan(/\s\s\s\s\s\s\st.[a-z]{1,13}/) ==

	# if line.scan(/\s\s\s\s\s\s\st.[a-z]{1,13}/) == 

	# if line.scan(/\s\s\s\s\s\s\st.[a-z]{1,13}/) == 


# File.open('/Users/maktheresa/Desktop/projects/gem_test_post/db/seeds.rb', 'w') {|file| file.truncate(0) }
File.open('/Users/maktheresa/Desktop/projects/gem_test_post/db/seeds.rb', 'w') { |file|
  file.puts "User.destroy_all"
  file.puts "10.times do \n     " + 
  	class_singular + ".create!(username: Faker::Name.first_name)
end"



}

end
