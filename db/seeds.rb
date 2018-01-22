# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Genre.delete_all
Genre.connection.execute("delete from sqlite_sequence where name='genres'")
Genre.create(name: '本', keyword_amazon: 'stripbooks', keyword_rakuten: '200162')
Genre.create(name: 'CD', keyword_amazon: 'popular', keyword_rakuten: '101311')
Genre.create(name: 'DVD', keyword_amazon: 'dvd', keyword_rakuten: '101354')
Yoyaku.delete_all
Yoyaku.connection.execute("delete from sqlite_sequence where name='yoyakus'")
Yoyaku.create(name: 'amazon', url: 'http://www.amazon.co.jp/s/ref=nb_sb_noss_1?__mk_ja_JP=カタカナ&url=search-alias=@genre@&field-keywords=@name@')
Yoyaku.create(name: '楽天', url: 'https://search.rakuten.co.jp/search/mall/@name@/@genre@/')
Yoyaku.create(name: 'tsutaya', url: 'http://shop.tsutaya.co.jp/search_result.html?ecCategory=01&searchType=1&pSCS=@genre@&searchKeyword=@name@&submit=&x=0&y=0')
Yoyaku.create(name: 'yahooショッピング', url: 'https://shopping.yahoo.co.jp/search?first=1&tab_ex=commerce&fr=shp-prop&oq=&aq=&mcr=2de60ec91127c2d50e0649a49578ec66&ts=1511138449&cid=@genre@&p=@name@&di=&uIv=on&used=0&pf=&pt=&seller=0&mm_Check=&sc_i=shp_pc_cate-all_searchBox')
Yoyaku.create(name: 'セブンネットショッピング', url: 'http://7net.omni7.jp/search/?keyword=@name@&searchKeywordFlg=1&siteCateCode=@genre@')
Genrekeyword.delete_all
Genrekeyword.connection.execute("delete from sqlite_sequence where name='genrekeywords'")
Genrekeyword.create(genre_id:'1', yoyaku_id:'1', keyword:'stripbooks')
Genrekeyword.create(genre_id:'2', yoyaku_id:'1', keyword:'popular')
Genrekeyword.create(genre_id:'3', yoyaku_id:'1', keyword:'dvd')
Genrekeyword.create(genre_id:'1', yoyaku_id:'2', keyword:'200162')
Genrekeyword.create(genre_id:'2', yoyaku_id:'2', keyword:'101311')
Genrekeyword.create(genre_id:'3', yoyaku_id:'2', keyword:'101354')
Genrekeyword.create(genre_id:'1', yoyaku_id:'3', keyword:'本')
Genrekeyword.create(genre_id:'2', yoyaku_id:'3', keyword:'CD、音楽DVD')
Genrekeyword.create(genre_id:'3', yoyaku_id:'3', keyword:'DVD')
Genrekeyword.create(genre_id:'1', yoyaku_id:'4', keyword:'00')
Genrekeyword.create(genre_id:'2', yoyaku_id:'4', keyword:'02')
Genrekeyword.create(genre_id:'3', yoyaku_id:'4', keyword:'03')
Genrekeyword.create(genre_id:'1', yoyaku_id:'5', keyword:'002000')
Genrekeyword.create(genre_id:'2', yoyaku_id:'5', keyword:'004000')
Genrekeyword.create(genre_id:'3', yoyaku_id:'5', keyword:'005000')

