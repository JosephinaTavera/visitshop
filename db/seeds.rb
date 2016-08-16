# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
vine = ActiveSupport::JSON.decode(File.read(‘../Desktop/sampleissue1989’))

vine.each do |a| Comic.create!(:image => a‘image['medium_url']’], :name => a‘name’],)
	 end