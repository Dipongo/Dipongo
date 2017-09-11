# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
# Page.destroy_all
# Story.destroy_all
# Universe.destroy_all


Page.destroy_all
Story.destroy_all
Universe.destroy_all

jungle = Universe.create(name: "Jungle", photo_url: "http://res.cloudinary.com/dipongo/image/upload/v1505135829/Universes/jungle/monde-jungle_pnyccb.png")
ocean = Universe.create(name: "Fond Marin", photo_url: "http://res.cloudinary.com/dipongo/image/upload/v1505135827/Universes/ocean/monde-ocean_mtprh5.png")
gourmandise = Universe.create(name: "Gourmandise", photo_url: "http://res.cloudinary.com/dipongo/image/upload/v1505135832/Universes/gourmandise/monde-gourmandise_rtizgv.png")

puts "Universe DONE"

jungle_story_1 = jungle.stories.create(name: "Forêt Tropical 1")
jungle_story_2 = jungle.stories.create(name: "Forêt Tropical 2")

ocean_story_1 = ocean.stories.create(name: "Fonds marins 1")
ocean_story_2 = ocean.stories.create(name: "Fonds marins 2")

gourmandise_story_1 = gourmandise.stories.create(name: "Gourmandise 1")
gourmandise_story_2 = gourmandise.stories.create(name: "Gourmandise 2")

puts "Story DONE"

jungle_story_1.pages.create(content: "Edgar arrive dans la forêt tropicale. Etouffé par la chaleur, il est déjà bien fatigué. Ce
n’est pas si facile la vie d’explorateur. Edgar a bien mérité un peu de repos. Installé
dans son hamac, il contemple la belle nature qui s’offre à lui. Il y a plein de feuilles de
formes et de couleurs différentes.", photo_url: "http://res.cloudinary.com/dipongo/image/upload/v1505138157/Universes/jungle/jungle02/jungle-histoire2-image1.jpg")

jungle_story_1.pages.create(content: "Edgar commence à peine à trouver le sommeil quand un bruit assourdissant le
réveille. Il sursaute et se lève immédiatement sur son hamac. Qu’est-ce qui peut faire
un bruit pareil ?", photo_url: "http://res.cloudinary.com/dipongo/image/upload/v1505138157/Universes/jungle/jungle02/jungle-histoire2-image2.jpg")

jungle_story_1.pages.create(content: "Edgar décide de partir voir ce qui a pu le réveiller. Le voilà rassuré ! Derrière les
plantes carnivores, il voit une grande cascade. Le bruit, c’est en fait juste de l’eau qui
coule !
Il fait très chaud et humide dans cette forêt. La vue de l’eau donne envie à Edgar de
se baigner. Mais un gouffre le sépare de la cascade.
Peux-tu aider Edgar à trouver un moyen de franchir le précipice ?
Dès que tu es prêt, prends en photo ta solution.", photo_url: "http://res.cloudinary.com/dipongo/image/upload/v1505138157/Universes/jungle/jungle02/jungle-histoire2-image3.jpg")

puts "Jungle Story 1 DONE"

jungle_story_2.pages.create(content: "Edgar a traversé la grande cascade, il peut désormais vadrouiller dans la forêt
tropicale. Notre explorateur est surpris de voir devant lui un arbre tout seul entouré
de couleurs sombres. Edgar décide de s’en approcher pour voir ce qu’il a pu se
passer.", photo_url: "http://res.cloudinary.com/dipongo/image/upload/v1505138297/Universes/jungle/Jungle01/Fore%CC%82t_tropicale_1.4.jpg")

jungle_story_2.pages.create(content: "Edgar découvre un arbre bien malheureux qui pleure toutes les larmes de son tronc.
L’arbre a perdu tous ses amis, arrachés par des humains malveillants à bord de leurs
tracteurs.", photo_url: "http://res.cloudinary.com/dipongo/image/upload/v1505138297/Universes/jungle/Jungle01/Fore%CC%82t_tropicale_1.5.jpg")

jungle_story_2.pages.create(content: "Emu, Edgar ne peut pas laisser cet arbre solitaire.
Peux-tu aider Edgar à imaginer des plantes qui viendraient entourer l’arbre et lui tenir
compagnie ?
Quand tu es prêt, prends une photo de ta création et partage-la.", photo_url: "http://res.cloudinary.com/dipongo/image/upload/v1505138297/Universes/jungle/Jungle01/Fore%CC%82t_tropicale_1.6.jpg")

puts "Jungle Story 2 DONE"

ocean_story_1.pages.create(content: "Il fait nuit quand Edgar arrive dans l’univers des fonds marins. Heureusement, le ciel
est dégagé et les étoiles l’éclairent. Apercevant l’eau, Edgar se demande ce qu’il
peut se cacher dessous.", photo_url: "http://res.cloudinary.com/dipongo/image/upload/v1505138361/Universes/ocean/ocean01/ocean-histoire1-image1.jpg")

ocean_story_1.pages.create(content: "Notre jeune explorateur ne résiste pas longtemps à l’envie de sauter dans l’eau. Ni
une, ni deux, Edgar plonge ! Il part à la découverte de ces fonds marins remplis de
magnifiques coquillages et d’algues aux couleurs lumineuses", photo_url: "http://res.cloudinary.com/dipongo/image/upload/v1505138361/Universes/ocean/ocean01/ocean-histoire1-image2.jpg")

ocean_story_1.pages.create(content: "Edgar n’a pas pensé qu’il ne peut pas tenir longtemps sous l’eau. Heureusement
qu’il sait nager et qu’il peut remonter rapidement à la surface.
Peux-tu l’aider à trouver une solution qui lui permettra de respirer sous l’eau et
explorer la beauté de ces fonds marins ?
Quand tu es prêt, prends une photo de ta création et partage-la.", photo_url: "http://res.cloudinary.com/dipongo/image/upload/v1505138361/Universes/ocean/ocean01/ocean-histoire1-image3.jpg")

puts "Ocean story 1 DONE"

ocean_story_2.pages.create(content: "Grâce à toi, Edgar peut désormais respirer sous l’eau et y rester un long moment.
Oh c’est super ! Edgar n’est pas seul dans ces fonds marins. Il aperçoit plein de
camarades de jeu : Lulu la tortue, Irène la murène et même les frères Baboune des
poissons-clowns.", photo_url: "http://res.cloudinary.com/dipongo/image/upload/v1505138427/Universes/ocean/ocean02/ocean-histoire2-image1.jpg")

ocean_story_2.pages.create(content: "En s’avançant légèrement, Edgar tombe nez à nez avec un superbe poisson jaune
recouvert d’écailles multicolores.
Le pauvre animal a l’air triste. Que peut-il se passer de si inquiétant pour qu’un
poisson aux couleurs si éclatantes soit apeuré de la sorte ?", photo_url: "http://res.cloudinary.com/dipongo/image/upload/v1505138427/Universes/ocean/ocean02/ocean-histoire2-image2.jpg")

ocean_story_2.pages.create(content: "En discutant avec lui, Edgar comprend que le poisson jaune n’a pas de maison où
s’abriter contrairement à tous les autres habitants des fonds marins. Peux-tu aider
Edgar à construire une habitation pour son nouvel ami ?
Quand tu es prêt, prends une photo de ta création.", photo_url: "http://res.cloudinary.com/dipongo/image/upload/v1505138427/Universes/ocean/ocean02/ocean-histoire2-image3.jpg")

puts "Ocean story 2 DONE"

gourmandise_story_1.pages.create(content: "Edgar vient d’atterrir dans l’univers de la gourmandise. C’est un endroit rempli de
friandises, de sucreries et d’aliments appétissants.
Il y en a partout, même dans les arbres, tu as vu ?
Notre explorateur pose sa valise pour mieux observer l’arbre à pâtisserie et les
immenses sucettes qui servent de parasol.", photo_url: "http://res.cloudinary.com/dipongo/image/upload/v1505138611/Universes/gourmandise/gourmandise01/gourmandise-histoire1-image1.jpg")

gourmandise_story_1.pages.create(content: "Très gourmand, Edgar ne résiste pas longtemps à la tentation. Il décide de récolter
les ingrédients qui ont poussé dans l’arbre à pâtisserie : des fraises, des œufs, de la
farine, il y en a des choses !", photo_url: "http://res.cloudinary.com/dipongo/image/upload/v1505138611/Universes/gourmandise/gourmandise01/gourmandise-histoire1-image2.jpg")

gourmandise_story_1.pages.create(content: "Mais ces ingrédients tout seuls ce n’est très rigolo. Et puis Edgar a faim, les
aventures, ça creuse. Il veut faire un goûter mais il ne sait pas ce qu’il pourrait
fabriquer.
Veux-tu aider Edgar à concocter un bon goûter ? Imagine un dessert à faire avec tes
parents.
Quand tu es prêt, prends en photo ta création et partage-la.", photo_url: "http://res.cloudinary.com/dipongo/image/upload/v1505138611/Universes/gourmandise/gourmandise01/gourmandise-histoire1-image3.jpg")

puts "Gourmandise Story 1 DONE"

gourmandise_story_2.pages.create(content: "Et voilà, Edgar est de nouveau sur la route de la gourmandise. Grâce à toi, il a bien
goûté !
Derrière le champ de sucettes, Edgar suit un chemin bordé de cailloux colorés qui
ressemblent beaucoup à des bonbons…", photo_url: "http://res.cloudinary.com/dipongo/image/upload/v1505138686/Universes/gourmandise/gourmandise02/gourmandise-histoire2-image1.jpg")

gourmandise_story_2.pages.create(content: "Ahlala quelle chaleur ! Heureusement qu’Edgar a son ombrelle avec lui. Il peut se
mettre à l’abri de ce soleil brûlant.
Il aperçoit une maison et a très envie de s’y installer pour se mettre au frais. C’est
étonnant, on dirait que la maison est construite avec des sucres d’orge et des
meringues. Et surtout ! Elle est en chocolat cette maison !", photo_url: "http://res.cloudinary.com/dipongo/image/upload/v1505138686/Universes/gourmandise/gourmandise02/gourmandise-histoire2-image2.jpg")

gourmandise_story_2.pages.create(content: "Avec la température qu’il fait, la maison commence à fondre. Le toit va s’écrouler si
personne ne réagit.
Peux-tu aider Edgar à trouver une solution ?
Quand tu es prêt, prends en photo ta création et partage-la.", photo_url: "http://res.cloudinary.com/dipongo/image/upload/v1505138686/Universes/gourmandise/gourmandise02/gourmandise-histoire2-image3.jpg")

puts "Gourmandise Story 2 DONE"





