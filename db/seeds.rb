# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

@dot = Dot.new
@dot.typename = 'DODGE'
@dot.latitude = 35.698907
@dot.longtitude = 139.725405
@dot.speed = 29.8
@dot.degree = 12.2
@dot.time = '2017-01-01 01:01:01'
@dot.save

@dot = Dot.new
@dot.typename = 'SUDDEN-BREAKING'
@dot.latitude = 35.798907
@dot.longtitude = 139.825405
@dot.speed = 19.8
@dot.degree = 22.2
@dot.time = '2017-03-04 03:01:01'
@dot.save
