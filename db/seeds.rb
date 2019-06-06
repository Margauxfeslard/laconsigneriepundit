
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

granivore = Brasserie.create!(
  nom: "Granivore",
  adresse: "Lille",
  description: "Au delà d'une brasserie de production, le Singe propose un BrewLab composé d'une école de brassage où apprendre et s'améliorer. C'est aussi un lieu où échanger avec les autres passionné-e-s et un BrewShop où acheter vos matières premières ainsi que votre matériel de brassage. Sensations fortes garanties ! N'hésitez pas à nous contactez si vous êtes intéressée.",
  photo: "http://www.singe-savant.com/static/images/brewery/magasin.jpg"
)

Biere.create!(
  nom: "21st century",
  brasserie: granivore,
  description: "La première Berliner Weisse de la brasserie ! Ultra rafraîchissante, la One Trip a été acidulée naturellement au lactobacille pendant 24h et fermentée avec de la poire cultivée en biodynamie et du cassis biologique, nous avons designé une bière pour permettre à tous de mettre un pied en douceur dans le monde des bières acides. One Trip, One Noise !",
  style: "berliner weiss",
  couleur: "rousse",
  taux_alcool: rand(4..12),
  amertume: rand(1..5),
  apparence: "Très trouble",
  prix_par_litre: 8,
  logo_img: "https://erp.singe-savant.com//files/Papa_badge_small.png"
  )

Brasserie.all.each do |brasserie|
    3.times do |n|
      Biere.create!(
      nom: brasserie.nom + "biere" + n.to_s,
      brasserie: brasserie,
      couleur: "blonde",
      taux_alcool: rand(4..12),
      amertume: rand(1..5),
      apparence: "Claire",
      prix_par_litre: 2 * n,
      logo_img: "https://erp.singe-savant.com//files/Papa_badge_small.png"
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
user3 = User.create!(
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
