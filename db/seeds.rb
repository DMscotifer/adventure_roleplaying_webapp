require_relative("../models/monster.rb")
require_relative("../models/player.rb")
require_relative("../models/item.rb")
require("pry-byebug")

Monster.delete_all()
Player.delete_all()
Item.delete_all()
#
monster1 = Monster.new(
  {
    "name" => "placeholder",
    "species" => "placeholder",
    "type" => "placeholder",
    "known" => false,
    "image" => "placeholder"
  }
)
monster1.save()
#
monster2 = Monster.new(
  {
    "name" => "dark naga",
    "species" => "naga",
    "type" => "aberration",
    "known" => true,
    "image" => "/images/monsters/dark_naga.jpg"
  }
)
monster2.save()
#
monster3 = Monster.new(
  {
    "name" => "mohrg",
    "species" => "undead",
    "type" => "undead",
    "known" => false,
    "image" => "/images/monsters/mohrg.jpg"
  }
)
monster3.save()
#
monster4 = Monster.new(
  {
    "name" => "nabasu",
    "species" => "demon",
    "type" => "outsider",
    "known" => true,
    "image" => "/images/monsters/nabasu.png"
  }
)
monster4.save()
#
monster5 = Monster.new(
  {
    "name" => "cloakers",
    "species" => "aberration",
    "type" => "aberration",
    "known" => false,
    "image" => "/images/monsters/cloakers.jpg"
  }
)
monster5.save()
#
monster6 = Monster.new(
  {
    "name" => "wraiths",
    "species" => "incorporeal undead",
    "type" => "undead",
    "known" => true,
    "image" => "/images/monsters/wraiths.jpg"
  }
)
monster6.save()
#
monster7 = Monster.new(
  {
    "name" => "ettins",
    "species" => "giant",
    "type" => "monstrous humanoid",
    "known" => true,
    "image" => "/images/monsters/ettin.jpg"
  }
)
monster7.save()
#
monster8 = Monster.new(
  {
    "name" => "bone devil",
    "species" => "demon",
    "type" => "outsider",
    "known" => false,
    "image" => "/images/monsters/bone_devil.jpg"
  }
)
monster8.save()
#
monster9 = Monster.new(
  {
    "name" => "night hag",
    "species" => "extraplanar",
    "type" => "outsider",
    "known" => false,
    "image" => "/images/monsters/night_hag.png"
  }
)
monster9.save()
#
monster10 = Monster.new(
  {
    "name" => "spirit naga",
    "species" => "naga",
    "type" => "aberration",
    "known" => true,
    "image" => "/images/monsters/spirit_naga.jpg"
  }
)
monster10.save()
#
monster11 = Monster.new(
  {
    "name" => "vampire",
    "species" => "undead",
    "type" => "undead",
    "known" => false,
    "image" => "/images/monsters/vampire.jpg"
  }
)
monster11.save()
#
monster12 = Monster.new(
  {
    "name" => "vrock",
    "species" => "demon",
    "type" => "outsider",
    "known" => true,
    "image" => "/images/monsters/vrock.png"
  }
)
monster12.save()
#
monster13 = Monster.new(
  {
    "name" => "minotaur",
    "species" => "minotaur",
    "type" => "monstrous humanoid",
    "known" => false,
    "image" => "/images/monsters/minotaur.jpg"
  }
)
monster13.save()
#
monster14 = Monster.new(
  {
    "name" => "troll",
    "species" => "troll",
    "type" => "monstrous humanoid",
    "known" => false,
    "image" => "/images/monsters/troll.jpg"
  }
)
monster14.save()
#
monster15 = Monster.new(
  {
    "name" => "greater shadows",
    "species" => "incorporeal undead",
    "type" => "undead",
    "known" => true,
    "image" => "/images/monsters/greater_shadows.jpg"
   }
)
monster15.save()
#
monster16 = Monster.new(
  {
    "name" => "bebilith",
    "species" => "demon",
    "type" => "outsider",
    "known" => true,
    "image" => "/images/monsters/bebilith.png"
  }
)
monster16.save()
#
monster17 = Monster.new(
  {
    "name" => "barbed devil",
    "species" => "devil",
    "type" => "outsider",
    "known" => false,
    "image" => "/images/monsters/barbed_devil.png"
  }
)
monster17.save()
#
monster18 = Monster.new(
  {
    "name" => "devourer",
    "species" => "extraplanar",
    "type" => "undead",
    "known" => false,
    "image" => "/images/monsters/devourer.png"
  }
)
monster18.save()
#
monster19 = Monster.new(
  {
    "name" => "hezrou",
    "species" => "demon",
    "type" => "outsider",
    "known" => true,
    "image" => "/images/monsters/hezrou.jpg"
  }
)
monster19.save()
#
monster20 = Monster.new(
  {
    "name" => "rakshasas",
    "species" => "rakshasas",
    "type" => "outsider",
    "known" => true,
    "image" => "/images/monsters/rakshasas.png"
  }
)
monster20.save()
#
monster21 = Monster.new(
  {
    "name" => "lich",
    "species" => "undead",
    "type" => "undead",
    "known" => false,
    "image" => "/images/monsters/lich.jpeg"
  }
)
monster21.save()
#
monster22 = Monster.new(
  {
    "name" => "glabrezu	",
    "species" => "demon",
    "type" => "outsider",
    "known" => true,
    "image" => "/images/monsters/glabrezu.jpg"
  }
)
monster22.save()
#
monster23 = Monster.new(
  {
    "name" => "ice devil",
    "species" => "devil",
    "type" => "outsider",
    "known" => true,
    "image" => "/images/monsters/ice_devil.jpg"
  }
)
monster23.save()
#
monster24 = Monster.new(
  {
    "name" => "nalfeshnee",
    "species" => "demon",
    "type" => "outsider",
    "known" => false,
    "image" => "/images/monsters/nalfeshnee.jpg"
  }
)
monster24.save()
#
player1 = Player.new(
  {
    "name" => "placeholder",
    "class" => "placeholder",
    "inventory" => "placeholder",
    "image" => "placeholder"
  }
)
player1.save()
#
player2 = Player.new(
  {
    "name" => "Dungan",
    "class" => "monk",
    "image" => "/images/players/dungan.jpg"
  }
)
player2.save()
#
player3 = Player.new(
  {
    "name" => "Arthur",
    "class" => "Spellsword",
    "image" => "/images/players/arthur.jpg"
  }
)
player3.save()
#
player4 = Player.new(
  {
    "name" => "Zed",
    "class" => "assassin",
    "image" => "/images/players/zed.jpg"
  }
)
player4.save()
#
player5 = Player.new(
  {
    "name" => "Drizzt",
    "class" => "ranger",
    "image" => "/images/players/drizzt.jpeg"
  }
)
player5.save()

item1 = Item.new(
  {
    "name" => "Blade of Binding",
    "player_id" => player1.id,
    "monster_id" => monster1.id,
    "pc_owned" => false
  }
)
item1.save()

item2 = Item.new(
  {
    "name" => "Forsaken Banded Mail",
    "player_id" => player1.id,
    "monster_id" => monster1.id,
    "pc_owned" => false
  }
)
item2.save()

item3 = Item.new(
  {
    "name" => "Ring of Retribution",
    "player_id" => player1.id,
    "monster_id" => monster1.id,
    "pc_owned" => false
  }
)
item3.save()

item4 = Item.new(
  {
    "name" => "Staff of Souls",
    "player_id" => player1.id,
    "monster_id" => monster1.id,
    "pc_owned" => false
  }
)
item4.save()

item5 = Item.new(
  {
    "name" => "Sphere of Annihilation",
    "player_id" => player1.id,
    "monster_id" => monster1.id,
    "pc_owned" => false
  }
)
item5.save()

item6 = Item.new(
  {
    "name" => "Book of Lorgar",
    "player_id" => player1.id,
    "monster_id" => monster1.id,
    "pc_owned" => false
  }
)
item6.save()

item7 = Item.new(
  {
    "name" => "Twinkle",
    "player_id" => player5.id,
    "monster_id" => monster1.id,
    "pc_owned" => true
  }
)
item7.save()

item7 = Item.new(
  {
    "name" => "Icingdeath",
    "player_id" => player5.id,
    "monster_id" => monster1.id,
    "pc_owned" => true
  }
)
item7.save()
