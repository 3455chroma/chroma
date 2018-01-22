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


Genrekeyword.create(genre_id:'本', yoyaku_id:'amazon', keyword:'stripbooks')
Genrekeyword.create(genre_id:'CD', yoyaku_id:'amazon', keyword:'popular')
Genrekeyword.create(genre_id:'DVD', yoyaku_id:'amazon', keyword:'dvd')
Genrekeyword.create(genre_id:'本', yoyaku_id:'rakuten', keyword:'200162')
Genrekeyword.create(genre_id:'CD', yoyaku_id:'rakuten', keyword:'101311')
Genrekeyword.create(genre_id:'DVD', yoyaku_id:'rakuten', keyword:'101354')
Genrekeyword.create(genre_id:'DVD', yoyaku_id:'tsutaya', keyword:'本')
Genrekeyword.create(genre_id:'DVD', yoyaku_id:'tsutaya', keyword:'CD、音楽DVD')
Genrekeyword.create(genre_id:'DVD', yoyaku_id:'tsutaya', keyword:'DVD')
Genrekeyword.create(genre_id:'本', yoyaku_id:'yahoo', keyword:'00')
Genrekeyword.create(genre_id:'CD', yoyaku_id:'yahoo', keyword:'02')
Genrekeyword.create(genre_id:'DVD', yoyaku_id:'yahoo', keyword:'03')
Genrekeyword.create(genre_id:'本', yoyaku_id:'seven', keyword:'002000')
Genrekeyword.create(genre_id:'CD', yoyaku_id:'seven', keyword:'004000')
Genrekeyword.create(genre_id:'DVD', yoyaku_id:'seven', keyword:'005000')

