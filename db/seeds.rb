
puts "deleting"
Commandeitem.destroy_all
Commande.destroy_all
Review.destroy_all
Biere.destroy_all
Brasserie.destroy_all
Growler.destroy_all
User.destroy_all
Pointcollecte.destroy_all

puts "creating brasserie"
10.times do |n|
  Brasserie.create!(
    nom: "brasserie" + n.to_s,
    adresse: "Lille"
)
end

Brasserie.all.each do |brasserie|
    3.times do |n|
      Biere.create!(
      nom: "biere" + n.to_s,
      brasserie: brasserie,
      taux_alcool: 0.2 * n,
      prix_par_litre: 2 * n
      )
    end
end

puts "creating growler"
Growler.create!(
  capacite: 2,
  prix: 20
)
Growler.create!(
  capacite: 1,
  prix: 10
)

puts "creating users"
user1 = User.create!(
  email: "charles@gmail.com",
  password: "password"
)
user2 = User.create!(
  email: "margaux@gmail.com",
  password: "password"
)
user2 = User.create!(
  email: "marie@gmail.com",
  password: "password"
)


puts "creating reviews"
10.times do |n|
  Review.create!(
  user: User.all.sample,
  biere: Biere.all.sample,
  contenu: "Bien" * n,
  note: [1..5].sample
  )
end

puts "creating collectpoint"
10.times do |n|
  Pointcollecte.create!(
  nom: "pointcol" + n.to_s,
  adresse: "Somewhere"
  )
end

puts "creating commande"
10.times do |n|
  Commande.create!(
  user: User.all.sample,
  pointcollecte: Pointcollecte.all.sample,
  etat: 0
  )
end

puts "creating commandeitem bigrowlereres"
lignegrowler = Commandeitem.create!(
commande: Commande.all.sample,
item: Growler.all.sample,
quantite: 1
)

puts "creating commandeitem bieres"
lignebiere = Commandeitem.create!(
commande: Commande.all.sample,
item: Biere.all.sample,
quantite: 2
)
