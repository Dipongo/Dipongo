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
User.destroy_all
Solution.destroy_all

jungle = Universe.create!(name: "Jungle", nickname:"La Foret Tropicale", photo_url: "http://res.cloudinary.com/dipongo/image/upload/v1505135829/Universes/jungle/monde-jungle_pnyccb.png")
ocean = Universe.create!(name: "Ocean", nickname:"Les Fonds Marins", photo_url: "http://res.cloudinary.com/dipongo/image/upload/v1505135827/Universes/ocean/monde-ocean_mtprh5.png")
gourmandise = Universe.create!(name: "Gourmandise", nickname: "L'ile de la Gourmandise", photo_url: "http://res.cloudinary.com/dipongo/image/upload/v1505135832/Universes/gourmandise/monde-gourmandise_rtizgv.png")

puts "Universes DONE"

jungle_story_1 = jungle.stories.create!(name: "Forêt Tropical 1")
jungle_story_2 = jungle.stories.create!(name: "Forêt Tropical 2")
jungle_story_3 = jungle.stories.create!(name: "Forêt Tropical 3")

ocean_story_1 = ocean.stories.create!(name: "Fonds marins 1")
ocean_story_2 = ocean.stories.create!(name: "Fonds marins 2")
ocean_story_3 = ocean.stories.create!(name: "Fonds marins 3")

gourmandise_story_1 = gourmandise.stories.create!(name: "Gourmandise 1")
gourmandise_story_2 = gourmandise.stories.create!(name: "Gourmandise 2")

puts "Stories DONE"

user_1 = User.create!(name: Faker::Name.first_name, age: rand(5..8), email: Faker::Internet.email, password: 123456)
user_2 = User.create!(name: Faker::Name.first_name, age: rand(5..8), email: Faker::Internet.email, password: 123456)
user_3 = User.create!(name: Faker::Name.first_name, age: rand(5..8), email: Faker::Internet.email, password: 123456)
user_4 = User.create!(name: Faker::Name.first_name, age: rand(5..8), email: Faker::Internet.email, password: 123456)
user_5 = User.create!(name: Faker::Name.first_name, age: rand(5..8), email: Faker::Internet.email, password: 123456)

puts "Users DONE"

# pour chaque user, creer une solution sur chaque story

user_1.solutions.create!(photo_url: "http://res.cloudinary.com/dipongo/image/upload/v1508595967/Universes/jungle/Jungle01/Solution/ft_solution1_1_Isa.png", story_id: jungle_story_1.id)
user_1.solutions.create!(photo_url: "http://res.cloudinary.com/dipongo/image/upload/v1508595968/Universes/jungle/Jungle02/Solution/ft_solution2_1_Stella.jpg", story_id: jungle_story_2.id)
user_1.solutions.create!(photo_url: "http://res.cloudinary.com/dipongo/image/upload/v1508595967/Universes/jungle/jungle03/Solution/ft_solution3_1_Emilie.png", story_id: jungle_story_3.id)


puts "User_1 Solutions DONE"

user_2.solutions.create!(photo_url: "http://res.cloudinary.com/dipongo/image/upload/v1508595967/Universes/jungle/Jungle01/Solution/ft_solution1_2_Anne.png", story_id: jungle_story_1.id)
user_2.solutions.create!(photo_url: "http://res.cloudinary.com/dipongo/image/upload/a_hflip/v1508595969/Universes/Jungle/Jungle02/Solution/ft_solution2_2_Ulysse.jpg", story_id: jungle_story_2.id)
user_2.solutions.create!(photo_url: "http://res.cloudinary.com/dipongo/image/upload/v1508595967/Universes/jungle/jungle03/Solution/ft_solution3_2_Pierre.png", story_id: jungle_story_3.id)


puts "User_2 Solutions DONE"


user_3.solutions.create!(photo_url: "http://res.cloudinary.com/dipongo/image/upload/a_auto_left/v1508597035/Universes/ocean/ocean02/solution/fm_solution2-1_Keziah.jpg", story_id: ocean_story_2.id)
user_3.solutions.create!(photo_url: "http://res.cloudinary.com/dipongo/image/upload/a_auto_left/v1508597038/Universes/ocean/ocean02/solution/fm_solution2-2_Charly.jpg", story_id: ocean_story_2.id)
user_3.solutions.create!(photo_url: "http://res.cloudinary.com/dipongo/image/upload/v1508597445/Universes/gourmandise/gourmandise01/solution/ig_solution1-1_Alex.jpg", story_id: gourmandise_story_1.id)
user_3.solutions.create!(photo_url: "http://res.cloudinary.com/dipongo/image/upload/a_auto_left/v1508597444/Universes/gourmandise/gourmandise02/solution/ig_solution2-1_Cyril.jpg", story_id: gourmandise_story_2.id)

puts "User_3 Solutions DONE"


user_4.solutions.create!(photo_url: "http://res.cloudinary.com/dipongo/image/upload/v1508597040/Universes/ocean/ocean01/solution/fm_solution1-1_Alex.jpg", story_id: ocean_story_1.id)
user_4.solutions.create!(photo_url: "http://res.cloudinary.com/dipongo/image/upload/v1508597037/Universes/ocean/ocean01/solution/fm_solution1-2_Simon.jpg", story_id: ocean_story_1.id)
user_4.solutions.create!(photo_url: "http://res.cloudinary.com/dipongo/image/upload/v1508597439/Universes/gourmandise/gourmandise01/solution/ig_solution1-2_Adrien.jpg", story_id: gourmandise_story_1.id)
user_4.solutions.create!(photo_url: "http://res.cloudinary.com/dipongo/image/upload/v1508597441/Universes/gourmandise/gourmandise02/solution/ig_solution2-2_Kenza.jpg", story_id: gourmandise_story_2.id)

puts "User_4 Solutions DONE"


user_5.solutions.create!(photo_url: "http://res.cloudinary.com/dipongo/image/upload/v1508597030/Universes/ocean/ocean03/solution/fm_solution3-1_Etienne.png", story_id: ocean_story_3.id)
user_5.solutions.create!(photo_url: "http://res.cloudinary.com/dipongo/image/upload/v1508597031/Universes/ocean/ocean03/solution/fm_solution3-2_James.jpg", story_id: ocean_story_3.id)


puts "User_5 Solutions DONE"

jungle_story_1.pages.create(content: "Edgar arrive dans la forêt tropicale. Etouffé par la chaleur, il est déjà bien fatigué. Ce
n’est pas si facile la vie d’explorateur. Edgar a bien mérité un peu de repos. Installé
dans son hamac, il contemple la belle nature qui s’offre à lui. Il y a plein de feuilles de
formes et de couleurs différentes.", photo_url: "http://res.cloudinary.com/dipongo/image/upload/v1505138157/Universes/jungle/jungle01/jungle-histoire1-image1.png",
voice_url: "http://res.cloudinary.com/dipongo/video/upload/v1508574456/Universes/jungle/Jungle01/ft_h1_page01.mp3")

jungle_story_1.pages.create(content: "Edgar commence à peine à trouver le sommeil quand un bruit assourdissant le
réveille. Il sursaute et se lève immédiatement sur son hamac. Qu’est-ce qui peut bien faire
un bruit pareil ?", photo_url: "http://res.cloudinary.com/dipongo/image/upload/v1505138162/Universes/jungle/jungle01/jungle-histoire1-image2.png",
voice_url:"http://res.cloudinary.com/dipongo/video/upload/v1508574456/Universes/jungle/Jungle01/ft_h1_page02.mp3")

jungle_story_1.pages.create(content: " Edgard décide d'aller voir ce qui a bien pu le réveiller. Le voilà rassuré derrière une plante carnivore, il voit une grande cascade. Le bruit était juste de l'eau qui coule. Il fait très chaud et humide dans cette forêt. La vue de l'eau donne envie à Edgard de se baigner. Mais un gouffre le sépare de la cascade. Peux-tu aider Edgar à trouver une solution pour qu’il puisse franchir le précipice?.
Dès que tu es prêt, prends en photo ta solution.
", photo_url: "http://res.cloudinary.com/dipongo/image/upload/v1505138166/Universes/jungle/jungle01/jungle-histoire1-image3.png",
voice_url:"http://res.cloudinary.com/dipongo/video/upload/v1508574456/Universes/jungle/Jungle01/ft_h1_page03_textechange.mp3")

jungle_story_1.tips.create(content:"Vivant dans des milieux pauvres et sans beaucoup de ressources,
les plantes carnivores ont dû s’adapter pour survivre.
Comme toutes les plantes, elles ne peuvent pas se déplacer.
Elles ont donc mis en place un ingénieux système qui leur permet de piéger leurs proies.
Grâce à un liquide sucré apprécié des insectes, les plantes carnivores attirent leurs proies. Elles les capturent ainsi pour les manger et les digérer rapidement. Surprenantes ces plantes !
")
puts "Jungle Story 1 DONE"

jungle_story_2.pages.create(content: "Edgar a traversé la grande cascade, il peut désormais vadrouiller dans la forêt
tropicale. Notre explorateur est surpris de voir devant lui un arbre tout seul entouré
de couleurs sombres. Edgar décide de s’en approcher pour voir ce qu’il a pu se
passer.", photo_url: "http://res.cloudinary.com/dipongo/image/upload/v1505138297/Universes/jungle/Jungle02/jungle-histoire2-image1.png",
voice_url:"http://res.cloudinary.com/dipongo/video/upload/v1508574477/Universes/jungle/jungle02/ft_h2_page01.mp3")

jungle_story_2.pages.create(content: "Edgar découvre un arbre bien malheureux qui pleure toutes les larmes de son tronc.
L’arbre a perdu tous ses amis, arrachés par des humains malveillants à bord de leurs
tracteurs.", photo_url: "http://res.cloudinary.com/dipongo/image/upload/v1505138299/Universes/jungle/Jungle02/jungle-histoire2-image2.png",
voice_url:"http://res.cloudinary.com/dipongo/video/upload/v1508574477/Universes/jungle/jungle02/ft_h2_page02.mp3")

jungle_story_2.pages.create(content: "Emu, Edgar ne peut pas laisser cet arbre solitaire.
Peux-tu aider Edgar à imaginer des plantes qui viendraient entourer l’arbre et lui tenir
compagnie ?
Peux tu créer un ami pour Django L’arbre et lui écrire une parole réconfortante ?.", photo_url: "http://res.cloudinary.com/dipongo/image/upload/v1505138302/Universes/jungle/Jungle02/jungle-histoire2-image3.png",
voice_url:"http://res.cloudinary.com/dipongo/video/upload/v1508574477/Universes/jungle/jungle02/ft_h2_page03.mp3")

jungle_story_2.tips.create(content:"On reconnaît les forêts tropicales à leurs végétations abondantes et leurs grands arbres.
Il y fait en général très chaud et à cause des fortes pluies il fait humide aussi.
Ces forêts se trouvent dans les pays près de l’équateur, une zone où le soleil brille fort et chauffe toute l’année. Comme les océans, ce sont des lieux à préserver car ces forêts abritent des espèces variées d’animaux et de végétaux. Malheureusement, certaines personnes mal intentionnées les détruisent et menacent les espèces qui y vivent. On parle alors de déforestation.
")

puts "Jungle Story 2 DONE"

jungle_story_3.pages.create(content: "Edgar est un vrai escaladeur et s'amuse à monter sur une arche avec de la mousse, ça mouille!!!. Le petit renard contemple le paysage, qu'est ce qu'il est reveur notre Edgar!.", photo_url: "http://res.cloudinary.com/dipongo/image/upload/v1507627080/Universes/jungle/jungle03/jungle-histoire3-image1.png",
  voice_url:"http://res.cloudinary.com/dipongo/video/upload/v1508574498/Universes/jungle/jungle03/ft_h3_page01.mp3")

jungle_story_3.pages.create(content: "Edgar voudrait ramener un beau souvenir à son ami Gaston le raton laveur. Il découvre de superbes plantes mais qu'est ce qu'il pourrait rapporter à son ami Gaston.", photo_url: "http://res.cloudinary.com/dipongo/image/upload/v1507627080/Universes/jungle/jungle03/jungle-histoire3-image2.png",
  voice_url:"http://res.cloudinary.com/dipongo/video/upload/v1508574498/Universes/jungle/jungle03/ft_h3_page02.mp3")

jungle_story_3.pages.create(content: "Peux-tu aider Edgar à imaginer un souvenir de la forêt  tropicale pour l'offrir à Gaston le raton ?.", photo_url: "http://res.cloudinary.com/dipongo/image/upload/v1507627080/Universes/jungle/jungle03/jungle-histoire3-image3.png",
  voice_url:"http://res.cloudinary.com/dipongo/video/upload/v1508574498/Universes/jungle/jungle03/ft_h3_page03.m4a")

jungle_story_3.tips.create(content:"...")

puts "Jungle Story 3 DONE"


ocean_story_1.pages.create(content: "Il fait nuit quand Edgar arrive dans l’univers des fonds marins. Heureusement, le ciel
est dégagé et les étoiles l’éclairent. Apercevant l’eau, Edgar se demande ce qu’il
peut se cacher dessous.", photo_url: "http://res.cloudinary.com/dipongo/image/upload/v1505138361/Universes/ocean/ocean01/ocean-histoire1-image1.png",
voice_url:"http://res.cloudinary.com/dipongo/video/upload/v1508580728/Universes/ocean/ocean01/fm_h1-page01.mp3")

ocean_story_1.pages.create(content: "Notre jeune explorateur ne résiste pas longtemps à l’envie de sauter dans l’eau. Ni
une, ni deux, Edgar plonge ! Il part à la découverte de ces fonds marins remplis de
magnifiques coquillages et d’algues aux couleurs lumineuses", photo_url: "http://res.cloudinary.com/dipongo/image/upload/v1505138361/Universes/ocean/ocean01/ocean-histoire1-image2.png",
voice_url:"http://res.cloudinary.com/dipongo/video/upload/v1508580728/Universes/ocean/ocean01/fm_h1-page02.mp3")

ocean_story_1.pages.create(content: "Edgar n’a pas pensé qu’il ne peut pas tenir longtemps sous l’eau. Heureusement
qu’il sait nager et qu’il peut remonter rapidement à la surface.
Peux-tu l’aider à trouver une solution qui lui permettra de respirer sous l’eau et
explorer la beauté de ces fonds marins ?
Quand tu es prêt, prends une photo de ta création et partage-la.", photo_url: "http://res.cloudinary.com/dipongo/image/upload/v1505138361/Universes/ocean/ocean01/ocean-histoire1-image3.png",
voice_url:"http://res.cloudinary.com/dipongo/video/upload/v1508580728/Universes/ocean/ocean01/fm_h1-page03.mp3"
)

ocean_story_1.tips.create(content:"Univers fascinant, les fonds marins recouvrent une grande partie de la surface de la terre.
Ils abritent de très nombreuses espèces vivantes, c’est ce qu’on appelle la biodiversité.
Il y en aurait des millions et nous n’en connaissons qu’une toute petite partie.
Il reste encore plein de choses à explorer.
Mais c’est aussi et surtout un univers à préserver car des espèces sont menacées de disparaître.
Il faut donc respecter cet environnement : ne rien jeter dans les océans, interdire la pêche de certaines espèces,…
")

puts "Ocean story 1 DONE"

ocean_story_2.pages.create(content: "Grâce à toi, Edgar peut désormais respirer sous l’eau et y rester un long moment.
Oh c’est super ! Edgar n’est pas seul dans ces fonds marins. Il aperçoit plein de
camarades de jeu : Lulu la tortue, Irène la murène et même les frères Baboune des
poissons-clowns.", photo_url: "http://res.cloudinary.com/dipongo/image/upload/v1505138427/Universes/ocean/ocean02/ocean-histoire2-image1.png",
voice_url:"http://res.cloudinary.com/dipongo/video/upload/v1508580739/Universes/ocean/ocean02/fm_h2-page01.mp3")

ocean_story_2.pages.create(content: "En s’avançant légèrement, Edgar tombe nez à nez avec un superbe poisson jaune
recouvert d’écailles multicolores.
Le pauvre animal a l’air triste. Que peut-il se passer de si inquiétant pour qu’un
poisson aux couleurs si éclatantes soit apeuré de la sorte ?", photo_url: "http://res.cloudinary.com/dipongo/image/upload/v1505138427/Universes/ocean/ocean02/ocean-histoire2-image2.png",
voice_url:"http://res.cloudinary.com/dipongo/video/upload/v1508580739/Universes/ocean/ocean02/fm_h2-page02.mp3")

ocean_story_2.pages.create(content: "En discutant avec lui, Edgar comprend que le poisson jaune n’a pas de maison où
s’abriter contrairement à tous les autres habitants des fonds marins. Peux-tu aider
Edgar à construire une habitation pour son nouvel ami ?
Quand tu es prêt, prends une photo de ta création.", photo_url: "http://res.cloudinary.com/dipongo/image/upload/v1505138427/Universes/ocean/ocean02/ocean-histoire2-image3.png",
voice_url:"http://res.cloudinary.com/dipongo/video/upload/v1508580739/Universes/ocean/ocean02/fm_h2-page03.mp3")

ocean_story_2.tips.create(content:"Rigolo avec sa couleur orange et ses rayures blanches, le poisson-clown se cache dans les anémones de mer pour se protéger.
Anémone de mer et poisson-clown deviennent alors inséparables !
Le poisson-clown est omnivore ce qui veut dire qu’il se nourrit de tout ce qu’il peut attraper dans sa bouche.
Si tu regardes le poisson-clown se déplacer, tu auras l’impression de le voir danser.
Il est drôle en bougeant son corps de gauche à droite pour avancer !
")
puts "Ocean story 2 DONE"

ocean_story_3.pages.create(content: "Et voila Edgar est reparti a l'aventure. Il est ébloui par les faisceaux lumineux qui pénètrent  dans l'eau et émoustillent les poissons et d'ailleurs camélia est ce que tu l'as vois ? On te donne un indice elle est en orange.", photo_url: "http://res.cloudinary.com/dipongo/image/upload/v1507629641/Universes/ocean/ocean03/ocean-histoire3-image1.png",
  voice_url:"http://res.cloudinary.com/dipongo/video/upload/v1508580750/Universes/ocean/ocean03/fm_h3-page01.mp3")

ocean_story_3.pages.create(content: "Edgar recherche des amis quand, tout d'un coup il entend un bruit très etrange.", photo_url: "http://res.cloudinary.com/dipongo/image/upload/v1507633162/Universes/ocean/ocean03/ocean-histoire3-image2.png",
  voice_url:"http://res.cloudinary.com/dipongo/video/upload/v1508580750/Universes/ocean/ocean03/fm_h3-page02.mp3")

ocean_story_3.pages.create(content: "Que peut-il bien se cacher derrière ce rocher?. On aperçoit des bulles", photo_url: "http://res.cloudinary.com/dipongo/image/upload/v1507633195/Universes/ocean/ocean03/ocean-histoire3-image3.png",
  voice_url:"http://res.cloudinary.com/dipongo/video/upload/v1508580750/Universes/ocean/ocean03/fm_h3-page03.mp3")

ocean_story_3.tips.create(content:"La grande barrière de corail est un gigantesque récif, situé au large de l'Australie.
Elle est constituée de coraux qui sont de tailles, de couleurs et de formes différentes.
 La grande barrière de corail est aussi habitée : par des éponges de mer, des mollusques, et des poissons.
C'est la plus grande bioconstruction au monde : elle est même visible depuis l'espace !
La grande barrière de corail est en danger à cause du réchauffement climatique, de la pollution et des dégâts des touristes.")

puts "Ocean story 3 DONE"

gourmandise_story_1.pages.create(content: "Edgar vient d’atterrir dans l’univers de la gourmandise. C’est un endroit rempli de
friandises, de sucreries et d’aliments appétissants.
Il y en a partout, même dans les arbres, as-tu-vu ?
Notre explorateur pose sa valise pour mieux observer l’arbre à pâtisserie et les
immenses sucettes qui servent de parasol.", photo_url: "http://res.cloudinary.com/dipongo/image/upload/v1505138611/Universes/gourmandise/gourmandise01/gourmandise-histoire1-image1.png",
voice_url:"http://res.cloudinary.com/dipongo/video/upload/v1508581124/Universes/gourmandise/gourmandise01/ig_h1_page01.mp3")

gourmandise_story_1.pages.create(content: "Très gourmand, Edgar ne résiste pas longtemps à la tentation. Il décide de récolter
les ingrédients qui ont poussé dans l’arbre à pâtisserie : des fraises, des œufs, de la
farine, il y en a des choses !", photo_url: "http://res.cloudinary.com/dipongo/image/upload/v1505138611/Universes/gourmandise/gourmandise01/gourmandise-histoire1-image2.png",
voice_url:"http://res.cloudinary.com/dipongo/video/upload/v1508581124/Universes/gourmandise/gourmandise01/ig_h1_page02.mp3")

gourmandise_story_1.pages.create(content: "Mais ces ingrédients tout seuls ce n’est très rigolo. Et puis Edgar a faim, les
aventures, ça creuse. Il veut faire un goûter mais il ne sait pas ce qu’il pourrait
fabriquer.
Veux-tu aider Edgar à concocter un bon goûter ? Imagine un dessert à faire avec tes
parents.
Quand tu es prêt, prends en photo ta création et partage-la.", photo_url: "http://res.cloudinary.com/dipongo/image/upload/v1505138611/Universes/gourmandise/gourmandise01/gourmandise-histoire1-image3.png",
voice_url:"http://res.cloudinary.com/dipongo/video/upload/v1508581124/Universes/gourmandise/gourmandise01/ig_h1_page03.mp3")

gourmandise_story_1.tips.create(content:"Les aliments sucrés c’est bon mais ils peuvent être l’ennemi de tes dents.
Si tu n’entretiens pas bien tes dents, tu peux avoir des caries et avoir mal.
Pour éviter cela, tu dois te brosser les dents après chaque repas.
Il faut aussi rendre visite à son dentiste une fois par an pour qu’il vérifie ton hygiène dentaire.  Dentifrice et brosse à dent sont donc tes alliés !
")
puts "Gourmandise Story 1 DONE"

gourmandise_story_2.pages.create(content: "Et voilà, Edgar est de nouveau sur la route de la gourmandise. Grâce à toi, il a bien
goûté !
Derrière le champ de sucettes, Edgar suit un chemin bordé de cailloux colorés qui
ressemblent beaucoup à des bonbons…", photo_url: "http://res.cloudinary.com/dipongo/image/upload/v1505138686/Universes/gourmandise/gourmandise02/gourmandise-histoire2-image1.png",
voice_url:"http://res.cloudinary.com/dipongo/video/upload/v1508581140/Universes/gourmandise/gourmandise02/ig_h2_page01.mp3")

gourmandise_story_2.pages.create(content: "Ahlala quelle chaleur ! Heureusement qu’Edgar a son ombrelle avec lui. Il peut se
mettre à l’abri de ce soleil brûlant.
Il aperçoit une maison et a très envie de s’y installer pour se mettre au frais. C’est
étonnant, on dirait que la maison est construite avec des sucres d’orge et des
meringues. Et surtout ! Elle est en chocolat cette maison !", photo_url: "http://res.cloudinary.com/dipongo/image/upload/v1505138686/Universes/gourmandise/gourmandise02/gourmandise-histoire2-image2.png",
voice_url:"http://res.cloudinary.com/dipongo/video/upload/v1508581140/Universes/gourmandise/gourmandise02/ig_h2_page02.mp3")

gourmandise_story_2.pages.create(content: "Avec la température qu’il fait, la maison commence à fondre. Le toit va s’écrouler si
personne ne réagit.
Peux-tu aider Edgar à trouver une solution ?
Quand tu es prêt, prends en photo ta création et partage-la.", photo_url: "http://res.cloudinary.com/dipongo/image/upload/v1505138686/Universes/gourmandise/gourmandise02/gourmandise-histoire2-image3.png",
voice_url:"http://res.cloudinary.com/dipongo/video/upload/v1508581140/Universes/gourmandise/gourmandise02/ig_h2_page03.mp3")

gourmandise_story_2.tips.create(content:"C’est super quand il y a du soleil, tu peux aller à la plage et faire plein de jeux dehors.
Si le soleil peut être notre ami parce qu’il nous donne le moral, parce qu’il nous éclaire et nous réchauffe, parce qu’il nous aide à fixer le calcium sur nos os, il peut aussi être notre ennemi.
Si on ne se protège pas, le soleil brûle la peau et abîme les yeux.
Il faut donc faire attention : couvre-toi avec des lunettes de soleil et un chapeau, mets de la crème solaire régulièrement et suis les précieux conseils des adultes. ")

puts "Gourmandise Story 2 DONE"
