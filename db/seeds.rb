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
  description:"La brasserie Saint Germain a été créée en 2003 par Vincent, Stéphane et Hervé, tous trois passionnés de bières et souhaitant réaliser leurs propres recettes. La philosophie de la brasserie fût dès le début de l'aventure basée sur l'utilisation prioritaire de matières premières régionales afin de perpétuer la tradition brassicole et agricole de la région Nord Pas de Calais. Ainsi, les bières de garde de la Gamme Page 24 sont brassées exclusivement à partir de houblons  provenant de la coopérative régionale Coophounord.",
  )
page24.remote_photo_url = "https://res.cloudinary.com/dg5ekyjef/image/upload/v1560165651/Brasserie_Saint_Germain_Fermentation_Principale_1_t9xls4.jpg"
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
  couleur: "blonde",
  taux_alcool: 5.4,
  amertume: 4,
  apparence:"Claire",
  price_cents: 1000,
  )
labise.remote_logo_img_url = "https://res.cloudinary.com/dg5ekyjef/image/upload/v1560155519/La_bise_logo_dscve0.png"
labise.save

hopshot = Biere.create!(
  nom: "Hop Shot",
  brasserie: singesavant,
  description: "Hop Shot est une bière trans-atlantique : brassée avec un déluge de houblons à la fois américains et locaux, elle délivre au nez un surprenant bouquet d’arômes fruités et floraux d’agrumes. Associé à un corps désaltérant et une douce amertume, la Hop Shot incarne le style West Coast de l’IPA (India Pale Ale) et invite à découvrir un subtil mélange de saveurs citronnées, pamplemousses et résineuses.",
  style:"West Coast IPA",
  couleur:"ambrée",
  taux_alcool: 5.1,
  amertume: 3,
  apparence: "Trouble",
  price_cents: 1200,
  )
hopshot.remote_logo_img_url = "https://res.cloudinary.com/dbvuwwxkt/image/upload/v1560088826/Hopshot_img_s8zeo8.png"
hopshot.save

koukestout = Biere.create!(
  nom: "KOUKESTOUT",
  brasserie:bellenaert,
  description:"Brassin éphémère n°14" ,
  style:"American Stout",
  couleur: "noire" ,
  taux_alcool: 5.5,
  amertume: 2,
  apparence: "Trouble",
  price_cents: 1400,
  )
koukestout.remote_logo_img_url = "https://res.cloudinary.com/dg5ekyjef/image/upload/v1560155110/kouke_gqkn1w.jpg"
koukestout.save

poulemouillee = Biere.create!(
  nom:"Poule Mouillée",
  brasserie: tandem,
  description: "Une jolie IPA qui titre à '6,5%' d'alcool et qui vous garantit une explosion en bouche avec un équilibre parfait entre amertume et aromatique !",
  style: "IPA",
  couleur: "blonde" ,
  taux_alcool: 6.5,
  amertume: 3,
  apparence:"Claire",
  price_cents: 1500,
  )
poulemouillee.remote_logo_img_url = "https://res.cloudinary.com/dbvuwwxkt/image/upload/v1560088825/poulemouillee_eqxp4n.png"
poulemouillee.save

transition = Biere.create!(
  nom: "Transition",
  brasserie: hub,
  description: "A définir",
  style: "A définir",
  couleur: "blonde",
  taux_alcool: 6,
  amertume: 3,
  apparence: "Très claire",
  price_cents: 1200,
  )
transition.remote_logo_img_url = "https://res.cloudinary.com/dbvuwwxkt/image/upload/v1560088825/transitionhub_v86vbr.png"
transition.save

esquelbecq = Biere.create!(
  nom: "La blonde d'Esquelbecq",
  brasserie:thiriez,
  description: "La Blonde d'Esquelbecq est une bière blonde à la mousse crémeuse, accompagné d'une notes de levure et d'un soupçon de zeste d'orange, à l'amertume développée." ,
  style: "Blonde - Ale",
  couleur: "rousse",
  taux_alcool: 6.5,
  amertume: 2.5,
  apparence:"Trouble",
  price_cents: 1000,
  )
esquelbecq.remote_logo_img_url = "https://res.cloudinary.com/dg5ekyjef/image/upload/v1560155997/logo_blonde_uebf5n.png"
esquelbecq.save

hildegarde = Biere.create!(
  nom: "Hildegarde Blonde",
  brasserie: page24,
  description:"La Page 24 Réserve Hildegarde Blonde est une bière de garde artisanale. Produite depuis 2005, elle a très rapidement connu un succès d'ampleur : à peine un an après sa sortie, elle a été médaillée d'Or au Concours Général Agricole 2006 du Salon de l'Agriculture de Paris. Cela se reproduira en 2007 et 2008 (bronzes), en 2009 (Or), et en 2011 (Argent) dans la catégorie blonde de haute fermentation !",
  style: "Bière de garde artisanale",
  couleur: "blonde",
  taux_alcool: 6.9,
  amertume: 2,
  apparence: "Opalescente",
  price_cents: 1100,
  )
hildegarde.remote_logo_img_url = "https://res.cloudinary.com/dg5ekyjef/image/upload/v1560167563/logo24_cqgcsu.png"
hildegarde.save

brutos = Biere.create!(
  nom:"Brutos",
  brasserie: aupif,
  description:"Bière Brune ronde, très douce en bouche malgré son taux d'alcool." ,
  style:"Belgian Dark Strong Ale",
  couleur:"brune",
  taux_alcool: 9,
  amertume:3,
  apparence:"Trouble",
  price_cents: 900,
  )
brutos.remote_logo_img_url = "https://res.cloudinary.com/dg5ekyjef/image/upload/v1560153760/brutos_logo_dsm5js.png"
brutos.save

hoppyyuzu = Biere.create!(
  nom:"Hoppy Yuzu",
  brasserie: celestin,
  description:"Elle est enrichie avec du yuzu, agrume originaire du Tibet, cultivé au Japon. Les fruits de mer et HOPPY YUZU sont en parfait accord, les fromages de chèvres et de brebis accompagnés de HOPPY YUZU régaleront votre palais." ,
  style:"India Pale Ale (IPA)",
  couleur: "blonde" ,
  taux_alcool: 5.8,
  amertume: 4,
  apparence: "Claire" ,
  price_cents: 800,
  )
hoppyyuzu.remote_logo_img_url = "https://res.cloudinary.com/dg5ekyjef/image/upload/v1560154561/hoppy_yuzu_e5ng2z.jpg"
hoppyyuzu.save

traditionbiere = Biere.create!(
  nom:"Tradition",
  brasserie: lil,
  description:"blonde" ,
  style:"A définir",
  couleur:"A définir" ,
  taux_alcool: 5.7,
  amertume:3,
  apparence: "Très claire",
  price_cents: 1000,
  )
traditionbiere.remote_logo_img_url = "https://res.cloudinary.com/dg5ekyjef/image/upload/v1560154882/lil_vwa1v8.jpg"
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
  prenom: "Charles",
  adresse: "124 avenue Becquart",
  zipcode: 59130,
  ville: "Lambersart"
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
  nom: "Caulliez",
  prenom: "Marie"
)

user4 = User.create!(
  email: "jonathan@gmail.com",
  password: "password",
  nom: "Dupont",
  prenom: "Jonathan"
)

user5 = User.create!(
  email: "benjamin@gmail.com",
  password: "password",
  nom: "Desforges",
  prenom: "Benjamin"
)

user6 = User.create!(
  email: "victoire@gmail.com",
  password: "password",
  nom: "Paris",
  prenom: "Victoire"
)

user7 = User.create!(
  email: "maxime@gmail.com",
  password: "password",
  nom: "Chaumont",
  prenom: "Hubert"
)

user8 = User.create!(
  email: "aurelien@gmail.com",
  password: "password",
  nom: "Lemarcant",
  prenom: "Aurélien"
)

user9 = User.create!(
  email: "julien@gmail.com",
  password: "password",
  nom: "Poissonnier",
  prenom: "Julien"
)

user10 = User.create!(
  email: "jerome@gmail.com",
  password: "password",
  nom: "Jamet",
  prenom: "Jérome"
)

user11 = User.create!(
  email: "paul@gmail.com",
  password: "password",
  nom: "Belon",
  prenom: "Paul"
)

user12 = User.create!(
  email: "jules@gmail.com",
  password: "password",
  nom: "Baron",
  prenom: "Jules"
)

user13 = User.create!(
  email: "caroline@gmail.com",
  password: "password",
  nom: "Didier",
  prenom: "Caroline"
)

user14 = User.create!(
  email: "laura@gmail.com",
  password: "password",
  nom: "Saurat",
  prenom: "Laura"
)

user15 = User.create!(
  email: "camille@gmail.com",
  password: "password",
  nom: "Dubus",
  prenom: "Camille"
)

puts "creating reviews"
review1 = Review.create!(
  user: user1,
  biere: hopshot,
  contenu: "Excellente ! Servie un soir à l'apéro avec des copains. Super désaltérante et arômes vraiment intéressants : pamplemousse, citron, litchi...",
  note: 5,
)

review2 = Review.create!(
  user: user9,
  biere: hopshot,
  contenu: "Superbe bière ! Parfaite pour l'été autour d'un bon barbecue !",
  note: 4,
)

review3 = Review.create!(
  user: user10,
  biere: hopshot,
  contenu: "J'aime beaucoup les bières de cette brasserie ! Top de pouvoir en profiter dans des growlers grâce à la Consignerie.",
  note: 4,
)

review4 = Review.create!(
  user: user12,
  biere: hopshot,
  contenu: "Je recommande ! Un corps désaltérant et une douce amertume...",
  note: 5,
)

review5 = Review.create!(
  user: user8,
  biere: poulemouillee,
  contenu: "Franchement top ! Un équilibre parfait entre amertume et aromatique !",
  note: 5,
)

review6 = Review.create!(
  user: user2,
  biere: poulemouillee,
  contenu: "Je n'avais jamais goûté une bière aussi bonne ! Gardez-la dans votre sélection !!",
  note: 5,
)

review7 = Review.create!(
  user: user11,
  biere: poulemouillee,
  contenu: "Elue meilleure bière lors d'une dégustation à l'aveugle entre potes !",
  note: 5,
)

review8 = Review.create!(
  user: user14,
  biere: poulemouillee,
  contenu: "Pas mal mais j'ai déjà vu mieux...",
  note: 3,
)

review9 = Review.create!(
  user: user15,
  biere: hoppyyuzu,
  contenu: "Très bonne et franchement pas chère ! J'aime !",
  note: 5,
)

review10 = Review.create!(
  user: user7,
  biere: hoppyyuzu,
  contenu: "Originale mais pas forécement à mon goût... Pas trop fan de la note de yuzu...",
  note: 2,
)

review11 = Review.create!(
  user: user9,
  biere: hoppyyuzu,
  contenu: "Servie avec un plateau de fruits de mer un soir d'été... Franchement un kiff ! Merci la Consignerie pour votre vaste choix de bières. Toujours de superbes découvertes !",
  note: 5,
)

review12 = Review.create!(
  user: user4,
  biere: hildegarde,
  contenu: "Du mal à comprendre pourquoi tout le monde s'emballe pour cette bière...",
  note: 2,
)

review13 = Review.create!(
  user: user3,
  biere: hildegarde,
  contenu: "Superbe !! Je comprends pourquoi elle a gagné autant de médailles",
  note: 5,
)

review14 = Review.create!(
  user: user6,
  biere: hildegarde,
  contenu: "Trop fraîche ! Et juste trop bien de pouvoir la trouver en growlers consignés ! Bien joué La Consignerie !",
  note: 4,
)

review15 = Review.create!(
  user: user5,
  biere: brutos,
  contenu: "Une brute de bière ;) Mes potes et moi avons adoré !",
  note: 5,
)

review16 = Review.create!(
  user: user9,
  biere: brutos,
  contenu: "Au top ! Rien à redire",
  note: 4,
)

review17 = Review.create!(
  user: user11,
  biere: koukestout,
  contenu: "Trop originale pour moi...",
  note: 4,
)

review18 = Review.create!(
  user: user8,
  biere: koukestout,
  contenu: "Tchin tchin posey !",
  note: 5,
)

review19 = Review.create!(
  user: user6,
  biere: koukestout,
  contenu: "Tchin tchin posey !",
  note: 5,
)

review20 = Review.create!(
  user: user9,
  biere: labise,
  contenu: "Fraîche et douce, franchement idéale pour l'été !",
  note: 5,
)

review21 = Review.create!(
  user: user13,
  biere: labise,
  contenu: "Soirée entre filles elle a fait l'unanimité !",
  note: 4,
)

review22 = Review.create!(
  user: user6,
  biere: esquelbecq,
  contenu: "Pas mal, manque d'originalité mais c'est bon.",
  note: 3,
)

review23 = Review.create!(
  user: user3,
  biere: transition,
  contenu: "Super découverte !",
  note: 5,
)

review24 = Review.create!(
  user: user12,
  biere: traditionbiere,
  contenu: "Vraiment intéressante ! Je recommande vivement.",
  note: 4,
)

puts "creating collectpoint"

  Pointcollecte.create!(
  ville: "Lambersart",
  zipcode: 59130,
  nom: "Carrefour city",
  adresse: "114 avenue Becquart",
  horaire: "9h-12h tous les jours"
  )

  10.times do |n|
    Pointcollecte.create!(
    ville: "Lille",
    zipcode: 59000,
    nom: "pointcol" + n.to_s,
    adresse: "114 Rue de paris",
    horaire: "9h-12h tous les jours"
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
