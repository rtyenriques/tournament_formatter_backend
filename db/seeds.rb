# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

four = Competition.create(:name => '4 on 4 Breaking', :description => 'A 4 on 4 crew breaking battle being held at SkillzTalk.')
one = Competition.create(:name => '1 on 1 Breaking', :description => 'A 1 on 1 solo breaking battle being held at SkillzTalk.')
one_all = Competition.create(:name => '1 on 1 Kids Breaking', :description => 'A 1 on 1 kids breaking battle being held at SkillzTalk.')