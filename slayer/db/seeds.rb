# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
# require_relative './hero_data.rb'

Monster.destroy_all
Hero.destroy_all
User.destroy_all



alexander = Hero.create(name: "Alexander the Greatest", weapon_strength: 50, img_url: "https://s-media-cache-ak0.pinimg.com/originals/a5/64/ab/a564ab1cc1062fb0969541a600a985a7.jpg")
obama = Hero.create(name: "POTUS Obama", weapon_strength: 55, img_url: "https://m.popkey.co/98ba97/vzW3X_f-maxage-0_f-thumbnail-100-0_s-600x0.jpg?c=popkey-web&p=popkey&i=emoji--reactions&f=.jpg")
james = Hero.create(name: "ObiJames Kenobi", weapon_strength: 65, img_url: "http://encyclopedia.nuttybible.com/wp-content/uploads/2011/09/jesus-sword.png")
rihanna = Hero.create(name: "Goddess Rihanna", weapon_strength: 60, img_url: "https://belleonlinemagazine.files.wordpress.com/2012/05/screen-shot-2012-05-06-at-6-41-32-am1.png")


alexander.monsters.create!({name: "Da Kraken", habitat: "Ocean", health: 200, img_url: "http://img.finalfantasyxiv.com/lds/promo/pc/global/images/special/2_3_Defenders_of_Eorzea/dungeons/visual_02.png?484f51av1"})
obama.monsters.create!({name: "Black Dragon", habitat: "Mountain", health: 250, img_url: "http://ffe.hendersongdi.com/ff2/psp/blackdragon.gif"})
james.monsters.create!({name: "Godzilla", habitat: "Rain Forrest", health: 220, img_url: "http://40.media.tumblr.com/tumblr_m5tii38WQf1ru09vqo1_1280.png"})
obama.monsters.create!({name: "Clifford the Hellhound", habitat: "Washington DC", health: 190, img_url: "http://orig00.deviantart.net/4449/f/2013/134/a/6/clifford_the_big_red_dog_for_mugen_sprite_by_neopets2012-d659p34.png"})
