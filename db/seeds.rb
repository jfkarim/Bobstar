# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

for i in 1..10
  Floor.create(floor_number: i)
end

sections = []

for i in ('A'..'Z').to_a
  sections << i
  for j in ('A'..'Z').to_a
    call = i + j
    sections << call
  end
end

sections.each_with_index do |section, index|
  if index <= sections.index("DJ")
    Section.create(call_num: section, floor_id: 4)
  elsif index > sections.index("DJ") && index <= sections.index("EZ")
    Section.create(call_num: section, floor_id: 6)
  elsif index > sections.index("EZ") && index <= sections.index("LZ")
    Section.create(call_num: section, floor_id: 7)
  elsif index > sections.index("LZ") && index <= sections.index("PZ")
    Section.create(call_num: section, floor_id: 8)
  elsif index > sections.index("DJ") && index <= sections.index("ZZ")
    Section.create(call_num: section, floor_id: 9)
  end
end
