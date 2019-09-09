puts "Cleaning database..."

Action.destroy_all
Character.destroy_all
Round.destroy_all
Player.destroy_all
Team.destroy_all
Party.destroy_all

puts "Create Party..."

party = Party.create!

puts "Create Actions..."

carioca = Action.create!(name: "qui chante la carioca")
nettoie = Action.create!(name: "qui nettoie")
balaie  = Action.create!(name: "qui balaie")
voyage  = Action.create!(name: "qui voyage")
crie    = Action.create!(name: "qui crie")

puts "Create Characters..."

toucan  = Character.create!(name: "Un toucan")
bison   = Character.create!(name: "Un bison")
range   = Character.create!(name: "Un range")
bouffon = Character.create!(name: "Un bouffon")
pute    = Character.create!(name: "Une pute")

puts "Create Teams..."

equipe_1 = Team.create!(name: "Equipe 1", party: party)
equipe_2 = Team.create!(name: "Equipe 2", party: party)

puts "Create Players..."

flo       = Player.create!(name: "Flo", team: equipe_1)
aline       = Player.create!(name: "Aline", team: equipe_1)
volo       = Player.create!(name: "volodia", team: equipe_2)
jezza       = Player.create!(name: "jezza", team: equipe_2)

puts "Finished!"
