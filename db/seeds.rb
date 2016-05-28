# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Old.find_or_create_by( old_id: 'old1', old_val: '6〜7才')
Old.find_or_create_by( old_id: 'old2', old_val: '8〜9才')
Old.find_or_create_by( old_id: 'old3', old_val: '10〜11才')
Old.find_or_create_by( old_id: 'old4', old_val: '12〜14才')
Old.find_or_create_by( old_id: 'old5', old_val: '15〜17才')
Old.find_or_create_by( old_id: 'old6', old_val: '18〜29才')
Old.find_or_create_by( old_id: 'old7', old_val: '30〜49才')
Old.find_or_create_by( old_id: 'old8', old_val: '50〜69才')
Old.find_or_create_by( old_id: 'old9', old_val: '70才以上')
Old.find_or_create_by( old_id: 'old10', old_val: '妊娠初期')
Old.find_or_create_by( old_id: 'old10', old_val: '妊娠中期')
Old.find_or_create_by( old_id: 'old10', old_val: '妊娠末期')
Old.find_or_create_by( old_id: 'old10', old_val: '授乳婦')

Level.find_or_create_by( activity_level: 'activity1', activity_val: 'I(低い)')
Level.find_or_create_by( activity_level: 'activity2', activity_val: 'II(普通)')
Level.find_or_create_by( activity_level: 'activity3', activity_val: 'III(高い)')
