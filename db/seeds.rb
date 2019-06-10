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
jenlain = Brasserie.create!(
  nom:"Jenlain",
  adresse:"Brasserie Duyck, 113 Route nationale, 59144 Jenlain",
  description:"Pour nous une grande bière, c'est avant tout une idée au service d'un grand moment de plaisir. Si Jenlain est devenue au fil des années, la bière de garde la plus connue au monde, c'est parce que nous avons fait de cette idée un courant et un style unique toujours source d'inspiration. Aujourd'hui plus que jamais, nous nous engageons à développer des idées au service du plaisir de boire de grande bières dans l'esprit Jeanlain, le pur esprit 'bière de garde'",
  photo: "brasseriejenlain.jpg",
  )

jenlain.remote_photo_url = "https://res.cloudinary.com/dbvuwwxkt/image/upload/v1560088811/brasseriejenlain_ciepex.jpg"
jenlain.save

singesavant = Brasserie.create!(
  nom:"Singe Savant",
  adresse:"1bis Rue Charles Delesalle, 59000 Lille",
  description:"Le Singe savant est une micro-brasserie urbaine, de cœur de ville, située à Lille dans le quartier de Moulins. Nous brassons sur un système numérique de 200 litres construit par nos soins et bichonné pour nous permettre de réaliser toutes les recettes imaginées dans nos cerveaux de singes. Au delà de l'aspect brassicole, nous mettons un point d'honneur à travailler au maximum avec des matières premières biologiques, privilégions les circuits courts et essayons de réduire nos déchets tant que possible",
  )
singesavant.remote_photo_url = "https://res.cloudinary.com/dbvuwwxkt/image/upload/v1560088811/singesavant_vy9bci.jpg"
singesavant.save

bellenaert = Brasserie.create!(
  nom: "Bellenaert",
  adresse:"4662, route de la Belle Croix, Outtersteene, 59270 Bailleul" ,
  description: "La Brasserie Bellenaert est une entreprise ancrée dans son territoire, Flamande avant tout. Nous faisons appel à un maximum de fournisseurs et prestataires locaux – par exemple, notre Belle Blond est brassée principalement avec des houblons de Flandre. La bière est brassée avec 4 ingrédients : de l’eau, du malt, du houblon et de la levure. Nos bières ne sont ni filtrées, ni stérilisées et ne contiennent aucun additif. Nous sommes aussi très attachés à la vente directe, aux échanges avec les amateurs de bières et tous les curieux de passage à la brasserie.",
  )
bellenaert.remote_photo_url = "https://res.cloudinary.com/dbvuwwxkt/image/upload/v1560088811/bellenaert_o3nwaj.jpg"
bellenaert.save

tandem = Brasserie.create!(
  nom:"Tandem" ,
  adresse: "1268 Rue d'Ypres, 59118 Wambrechies",
  description:"Tandem est née début mai 2019. Tandem, c’est Pierre-André Zimmermann et Aymeric Segard. Tandem propose pour l’instant 3 bières blondes peu alcoolisées au nom rigolo : Poule mouillée, Bonne pioche et Attrape-nigaud. Avec une particularité : la volonté d’être « éco-responsable ».",
  )

tandem.remote_photo_url = "https://res.cloudinary.com/dbvuwwxkt/image/upload/v1560088812/tandem_sma8zc.jpg"
tandem.save

hub = Brasserie.create!(
  nom: "HUB" ,
  adresse: "37bis rue des Arts 59100 Roubaix",
  description: "Hoppy Urban Brew est un lieu de production coopératif, respectueux de l'environnement et de l'humain, à dimension locale. Les bières brassées au sein de ce projet sont toutes produites à partir d’ingrédients respectueux des écosystèmes. La coopérative travail, en lien avec d’autres acteurs du territoire ,dans une logique d’économie circulaire et de minimisation de son impact sur l’environnement. La brasserie HUB est aussi un futur lieu de convivialité et de rencontre autour de la bière comme véritable point de rassemblement à Roubaix.",
  photo: "hub.jpg",
  )
hub.remote_photo_url = "https://res.cloudinary.com/dbvuwwxkt/image/upload/v1560088811/hub_joiliw.jpg"
hub.save

thiriez = Brasserie.create!(
  nom: "Thiriez" ,
  adresse:"22 Rue de Wormhout 59470 Esquelbecq" ,
  description: "Ici, à Esquelbecq, le houblon est une histoire de famille qui dure depuis 1996. C’est Daniel qui a commencé en brassant les premières bières il y a 20 ans. Et c’est Clara aujourd'hui qui perpétue la tradition avec toute l'équipe. Toutes nos productions respectent nos valeurs : qualité, partage, diversité, plaisir, goût.",
  )

thiriez.remote_photo_url = "https://res.cloudinary.com/dbvuwwxkt/image/upload/v1560088813/thiriez_aandr8.jpg"
thiriez.save

page24 = Brasserie.create!(
  nom: "Page 24",
  adresse:"26 Route d'Arras, 62160 Aix-Noulette",
  description:"La brasserie Saint Germain a été créée en 2003 par Vincent, Stéphane et Hervé, tous trois passionnés de bières et souhaitant réaliser leurs propres recettes. Elle est installée à Aix Noulette, petit village de l'Artois au riche passé brassicole. La philosophie de la brasserie fût dès le début de l'aventure basée sur l'utilisation prioritaire de matières premières régionales afin de perpétuer la tradition brassicole et agricole de la région Nord Pas de Calais. Ainsi, les bières de garde de la Gamme Page 24 sont brassées exclusivement à partir de houblons  provenant de la coopérative régionale Coophounord.",
  )
page24.remote_photo_url = "https://res.cloudinary.com/dbvuwwxkt/image/upload/v1560088811/page24_uszj08.jpg"
page24.save

aupif = Brasserie.create!(
  nom: "AU PIF" ,
  adresse:"189 Route de Poperinghe, 59114 Steenvoorde" ,
  description: "La brasserie Au pif a été créée par Pierre FRANCKE suite au Festival Internation de la Bière Artisanal qui lui a donnée envi de se lancer.",
  )

aupif.remote_photo_url = "https://res.cloudinary.com/dbvuwwxkt/image/upload/v1560088811/aupif_txfbhx.jpg"
aupif.save

celestin = Brasserie.create!(
  nom:"Célestin",
  adresse:"19 Rue Jean Jacques Rousseau, 59800 Lille",
  description: "Célestin - La Micro-Brasserie du Vieux-Lille brasse Actuellement quatre bières : LA DIX, la WAL, la HOPPY YUZU et la N° NOIR. Amaury d’Herbigny propose également une sélection de 400 bières exclusivement artisanales: françaises, principalement du Nord, et internationales: Belges, Écossaises, Danoises, Norvégiennes, Américaines, Japonaises et bien d’autres pays encore. Une vingtaine de nouveautés arrive tous les mois.",
  )
celestin.remote_photo_url = "https://res.cloudinary.com/dbvuwwxkt/image/upload/v1560088810/celestin_udbqsi.jpg"
celestin.save

lil = Brasserie.create!(
  nom: "LIL",
  adresse: "35 Rue Frédéric Mottez, 59800 Lille",
  description:"Amateurs de bière depuis des années, et originaire de régions brassicoles (le Nord et l'Alsace), nous nous sommes découverts une passion pour le brassage voilà plusieurs années. Après de nombreux brassins d'essais à la maison, est venu le temps de voir plus grand...et de nous installer au coeur de Lille ! Située dans un ancienne manufacture textile, la Brasserie LIL est une brasserie 100% lilloise, 100% artisanale et 100% conviviale :-)",
  )
lil.remote_photo_url = "https://res.cloudinary.com/dbvuwwxkt/image/upload/v1560088811/lil_tcx7kd.jpg"
lil.save

puts "creating bières"
labise = Biere.create!(
  nom:"La bise",
  brasserie: jenlain,
  description:"La bise blonde est une authentique création brassicole fondée sur l'assemblage d'une bière à fermentation basse pour la légèreté et la fraicheur et d'une bière à fermentation haute pour le corsé, la rondeur et l'amertume. Grâce à cette approche décalée, la Bise surprendra par sa personnalité pétillante et sa fraîcheur haute en saveurs." ,
  style:"Blonde",
  couleur: "Jaune or",
  taux_alcool: 5.4,
  amertume:4,
  apparence:"Jaune or",
  price_cents: 1000,
  )
labise.remote_logo_img_url = "https://res.cloudinary.com/dbvuwwxkt/image/upload/v1560088826/labise_fm2fp2.jpg"
labise.save

hopshot = Biere.create!(
  nom: "Hop Shot",
  brasserie: singesavant,
  description: "Hop Shot est une bière trans-atlantique : brassée avec un déluge de houblons à la fois américains et locaux, elle délivre au nez un surprenant bouquet d’arômes fruités et floraux d’agrumes. Associé à un corps désaltérant et une douce amertume, la Hop Shot incarne le style West Coast de l’IPA (India Pale Ale) et invite à découvrir un subtil mélange de saveurs citronnées, pamplemousses et résineuses.",
  style:"West Coast IPA",
  couleur:"Ambrée" ,
  taux_alcool: 5.1 ,
  amertume: 3,
  apparence: "Robe cuivrée",
  price_cents: 1200,
  )
hopshot.remote_logo_img_url = "https://res.cloudinary.com/dbvuwwxkt/image/upload/v1560088826/Hopshot_img_s8zeo8.png"
hopshot.save

koukestout = Biere.create!(
  nom: "KOUKESTOUT",
  brasserie:bellenaert,
  description:"Brassin éphémère n°14" ,
  style:"American Stout",
  couleur: "Noir" ,
  taux_alcool: 5.5,
  amertume: 2,
  apparence: "Impérial stout",
  price_cents: 1400,
  )
koukestout.remote_logo_img_url = "https://res.cloudinary.com/dbvuwwxkt/image/upload/v1560088832/Koukestout_img_gndkgn.jpg"
koukestout.save

poulemouillee = Biere.create!(
  nom:"Poule Mouillée",
  brasserie: tandem,
  description: "Une jolie IPA qui titre à '6,5%' d'alcool et qui vous garantit une explosion en bouche avec un équilibre parfait entre amertume et aromatique !",
  style: "IPA",
  couleur: "Dorée" ,
  taux_alcool: 6.5,
  amertume: 3,
  apparence:"Blonde",
  price_cents: 1500,
  )
poulemouillee.remote_logo_img_url = "https://res.cloudinary.com/dbvuwwxkt/image/upload/v1560088825/poulemouillee_eqxp4n.png"
poulemouillee.save

transition = Biere.create!(
  nom: "Transition",
  brasserie: hub,
  description: "A définir",
  style: "A définir",
  couleur: "A définir",
  taux_alcool: 6,
  amertume: 3,
  apparence: "A définir",
  price_cents: 1200,
  )
transition.remote_logo_img_url = "https://res.cloudinary.com/dbvuwwxkt/image/upload/v1560088825/transitionhub_v86vbr.png"
transition.save

esquelbecq = Biere.create!(
  nom: "La blonde d'Esquelbecq",
  brasserie:thiriez,
  description: "La Blonde d'Esquelbecq est une bière blonde à la mousse crémeuse, accompagné d'une notes de levure et d'un soupçon de zeste d'orange, à l'amertume développée." ,
  style: "Blonde - Ale",
  couleur: "Orange dorée",
  taux_alcool: 6.5,
  amertume: 2.5,
  apparence:"Orange dorée",
  price_cents: 1000,
  )
esquelbecq.remote_logo_img_url = "https://res.cloudinary.com/dbvuwwxkt/image/upload/v1560088823/blondeesquelbecq_m6r4rf.png"
esquelbecq.save

hildegarde = Biere.create!(
  nom: "Page 24 Réserve Hildegarde Blonde",
  brasserie: page24,
  description:"La Page 24 Réserve Hildegarde Blonde est une bière de garde artisanale brassée par la jeune Brasserie Saint Germain, dans le Pas-de-Calais. Produite depuis 2005, elle a très rapidement connue un succès d'ampleur et à peine un an après sa sortie, elle a été médaillée d'Or au Concours Général Agricole 2006 du Salon de l'Agriculture de Paris. Cela se reproduira d'ailleurs en 2007 et 2008 (bronzes), en 2009 (Or), et en 2011 (Argent) dans la catégorie blonde de haute fermentation !",
  style: "Bière de garde artisanale",
  couleur: "Jolie robe blonde légèrement troublée",
  taux_alcool: 6.9,
  amertume: 2,
  apparence: "Jolie robe blonde légèrement troublée",
  price_cents: 1100,
  )
hildegarde.remote_logo_img_url = "https://res.cloudinary.com/dbvuwwxkt/image/upload/v1560088823/hildegardepage24_nkonp9.png"
hildegarde.save

brutos = Biere.create!(
  nom:"Brutos",
  brasserie: aupif,
  description:"Bière Brune ronde, très douce en bouche malgré son taux d'alcool." ,
  style:"Belgian Dark Strong Ale",
  couleur:"Brune",
  taux_alcool: 9,
  amertume:3,
  apparence:"Brune",
  price_cents: 900,
  )
brutos.remote_logo_img_url = "https://res.cloudinary.com/dbvuwwxkt/image/upload/v1560088825/brutos_vegvo2.png"
brutos.save

hoppyyuzu = Biere.create!(
  nom:"Hoppy Yuzu",
  brasserie: celestin,
  description:"Elle est enrichie avec du yuzu, agrume originaire du Tibet, cultivé au Japon. Les fruits de mer et HOPPY YUZU sont en parfait accord, les fromages de chèvres et de brebis accompagnés de HOPPY YUZU régaleront votre palais." ,
  style:"India Pale Ale (IPA)",
  couleur: "Jaune dorée" ,
  taux_alcool: 5.8,
  amertume: 4,
  apparence: "Jaune dorée" ,
  price_cents: 800,
  )
hoppyyuzu.remote_logo_img_url = "https://res.cloudinary.com/dbvuwwxkt/image/upload/v1560088823/hoppy_zhqlkj.png"
hoppyyuzu.save

traditionbiere = Biere.create!(
  nom:"Tradition",
  brasserie: lil,
  description:"A définir" ,
  style:"A définir",
  couleur:"A définir" ,
  taux_alcool: 5.7,
  amertume:3,
  apparence: "A définir",
  price_cents: 1000,
  )
traditionbiere.remote_logo_img_url = "https://res.cloudinary.com/dbvuwwxkt/image/upload/v1560088825/lil_drh4al.png"
traditionbiere.save

puts "creating growler"
Growler.create!(
  capacite: 2,
  price_cents: 700
)
Growler.create!(
  capacite: 1,
  price_cents: 400
)

puts "creating users"
user1 = User.create!(
  email: "charles@gmail.com",
  password: "password",
  nom: "Noppe",
  prenom: "Charles"
)
user2 = User.create!(
  email: "margaux@gmail.com",
  password: "password",
  nom: "Feslard",
  prenom: "Margaux"
)

user3 = User.create!(
  email: "marie@gmail.com",
  password: "password",
  nom: "Cauliez",
  prenom: "Marie"
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
  etat: 1
  )
end

commandegrowler = Commande.create!(
user: User.all.sample,
pointcollecte: Pointcollecte.all.sample,
etat: 1
)


puts "creating commandeitem bigrowlereres"
lignegrowler = Commandeitem.create!(
commande: Commande.all.sample,
item: Growler.all.sample,
quantite: 1
)

puts "creating commandeitem bigrowlereres"
lignegrowler = Commandeitem.create!(
commande: commandegrowler,
item: Growler.all.sample,
quantite: 2
)

puts "creating commandeitem bieres"
lignebiere = Commandeitem.create!(
commande: Commande.all.sample,
item: Biere.all.sample,
quantite: 2
)
