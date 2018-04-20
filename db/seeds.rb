require_relative("../models/monster.rb")
require_relative("../models/player.rb")

Monster.delete_all()

monster1 = Monster.new(
  {
    "name" => "black pudding",
    "species" => "ooze",
    "type" => "ooze"
  }
)
monster1.save()

monster2 = Monster.new(
  {
    "name" => "dark naga",
    "species" => "naga",
    "type" => "aberration"
  }
)
monster2.save()

monster3 = Monster.new(
  {
    "name" => "mohrg",
    "species" => "undead",
    "type" => "undead"
  }
)
monster3.save()

monster4 = Monster.new(
  {
    "name" => "nabasu",
    "species" => "demon",
    "type" => "outsider"
  }
)
monster4.save()

monster5 = Monster.new(
  {
    "name" => "cloakers",
    "species" => "aberration",
    "type" => "aberration"
  }
)
monster5.save()

monster6 = Monster.new(
  {
    "name" => "wraiths",
    "species" => "incorporeal undead",
    "type" => "undead"
  }
)
monster6.save()

monster7 = Monster.new(
  {
    "name" => "ettins",
    "species" => "giant",
    "type" => "monstrous humanoid"
  }
)
monster7.save()

monster8 = Monster.new(
  {
    "name" => "bone devil",
    "species" => "demon",
    "type" => "outsider"
  }
)
monster8.save()

monster9 = Monster.new(
  {
    "name" => "night hag",
    "species" => "extraplanar",
    "type" => "outsider"
  }
)
monster9.save()

monster10 = Monster.new(
  {
    "name" => "spirit naga",
    "species" => "naga",
    "type" => "aberration"
  }
)
monster10.save()

monster11 = Monster.new(
  {
    "name" => "vampire",
    "species" => "undead",
    "type" => "undead"
  }
)
monster11.save()

monster12 = Monster.new(
  {
    "name" => "vrock",
    "species" => "demon",
    "type" => "outsider"
  }
)
monster12.save()

monster13 = Monster.new(
  {
    "name" => "minotaur",
    "species" => "minotaur",
    "type" => "monstrous humanoid"
  }
)
monster13.save()

monster14 = Monster.new(
  {
    "name" => "troll",
    "species" => "troll",
    "type" => "monstrous humanoid"
  }
)
monster14.save()

monster15 = Monster.new(
  {
    "name" => "greater shadows",
    "species" => "incorporeal undead",
    "type" => "undead"
   }
)
monster15.save()

monster16 = Monster.new(
  {
    "name" => "bebilith",
    "species" => "demon",
    "type" => "outsider"
  }
)
monster16.save()

monster17 = Monster.new(
  {
    "name" => "barbed devil",
    "species" => "devil",
    "type" => "outsider"
  }
)
monster17.save()

monster18 = Monster.new(
  {
    "name" => "devourer",
    "species" => "extraplanar",
    "type" => "undead"
  }
)
monster18.save()

monster19 = Monster.new(
  {
    "name" => "hezrou",
    "species" => "demon",
    "type" => "outsider"
  }
)
monster19.save()

monster20 = Monster.new(
  {
    "name" => "rakshasas",
    "species" => "rakshasas",
    "type" => "outsider"
  }
)
monster20.save()

monster21 = Monster.new(
  {
    "name" => "lich",
    "species" => "undead",
    "type" => "undead"
  }
)
monster21.save()

monster22 = Monster.new(
  {
    "name" => "glabrezu	",
    "species" => "demon",
    "type" => "outsider"
  }
)
monster22.save()

monster23 = Monster.new(
  {
    "name" => "ice devil",
    "species" => "devil",
    "type" => "outsider"
  }
)
monster23.save()

monster24 = Monster.new(
  {
    "name" => "nalfeshnee",
    "species" => "demon",
    "type" => "outsider"
  }
)
monster24.save()
