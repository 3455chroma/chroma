# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Genre.create(name: '本', keyword_amazon: 'stripbooks', keyword_rakuten: '200162')
Genre.create(name: 'CD', keyword_amazon: 'popular', keyword_rakuten: '101311')
Genre.create(name: 'DVD', keyword_amazon: 'dvd', keyword_rakuten: '101354')