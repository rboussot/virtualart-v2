#
# ==================== User ====================
# === On en crée 3, dont un de test pas admin
#
u1 = User.create!(
  email: "boussotestelle@gmail.com",
  password:"mlkmlk",
  firstname:"Estelle",
  lastname:"Boussot",
  admin: true)
p u1
#
u2 = User.create!(
  email: "rboussot@gmail.com",
  password:"mlkmlk",
  firstname:"Romain",
  lastname:"Boussot",
  admin: true)
p u2
#
u3 = User.create!(
  email: "test@gmail.com",
  password:"mlkmlk",
  firstname:"Test",
  lastname:"Test")
p u3
#
# ==================== Software ====================
# === On les crée tous
#
ph = Software.create!(
  title: "Photoshop",
  description: "Photoshop est un logiciel de retouche et de montage assisté par ordinateur édité par Adobe. Il est utilisé dans tous les domaines (traitement de photographie et création d'images) pour sa polyvalence !")
p ph
#
ai = Software.create!(
  title: "Illustrator",
  description: "Illustrator est un logiciel de dessin vectoriel édité par Adobe. Il est essentiellement utilisé pour la création de logos, mais l'illustration vectorielle est à la mode !")
p ai
#
ind = Software.create!(
  title: "InDesign",
  description: "Indesign est un logiciel de mise en page édité par Adobe, les liens avec les fichiers Photoshop et Illustrator sont évidement reconnus.")
p ind
#
ae = Software.create!(
  title: "After Effects",
  description: "After Effects est un logiciel de compositing (montage) édité par Adobe. Il permet de créer des effets spéciaux et des animations graphiques sur des images et vidéos.")
p ae
#
ma = Software.create!(
  title: "Maya",
  description: "Maya est un logiciel de modéalisation et d'animation 3D utilisé dans l'industrie du cinéma, développé par la société Autodesk.")
p ma
#
mu = Software.create!(
  title: "Mudbox",
  description: "Mudbox est un logiciel de sculpting 3D, développé par la société Autodesk. Il permet la création de détails en modélisation et textures.")
p mu
#
csp = Software.create!(
  title: "Clip Studio Paint",
  description: "Clip Studio Paint est un logiciel de création de BDs Japonais, éditer chez nous par Lost Marble.")
p csp
#
mo = Software.create!(
  title: "Moho",
  description: "Moho est un logiciel d'animation 2D vectoriel facile d'accès, édité par Lost Marble.")
p mo
#
gra = Software.create!(
  title: "Graphisme",
  description: "Parce que les logiciels ne font pas tout, vous trouverez ici des connaissances plus générales que ce soit en dessin, en couleur, en impression... etc !")
p gra
#
# ==================== Course ====================
# === On les crée tous
#
m2d = Course.create!(
  title: "Multimédia 2D",
  description: "Réalisez dessins, retouches photos, dessin animé, films... Vous apprendrez à utiliser les logiciels et vous pourrez créer vos projets, nous vous aidons sur toutes les étapes : du croquis à la mise en page; du story-board au compositing en passant par le son !

Logiciels : Photoshop, Moho, After Effects.",
  picture: "http://www.virtualart.pro/images/interface/ic-2d.jpg",
  visible: true)
p m2d
#
m3d = Course.create!(
  title: "Multimédia 3D",
  description: "Réalisez des objets, des scènes et des animations 3D ! Apprenez à utiliser les logiciels, et nous vous aiderons à réaliser vos images, figurines ou films, du story-board au compositing en passant par le son !

Logiciels : Maya, Mudbox, Photoshop, After Effects.",
  picture: "http://www.virtualart.pro/images/interface/ic-3d.jpg",
  visible: true)
p m3d
#
bd = Course.create!(
  title: "BD Numérique",
  description: "Apprenez les règles de la BD, développez vos personnages, histoires et mises en page. Le numérique vous offre aussi de nouvelles solutions d'immersion à découvrir !

Logiciels : Clip Sutdio Paint, Photoshop.",
  picture: "http://www.virtualart.pro/images/interface/ic-bd.jpg",
  visible: true)
p bd
#
pr = Course.create!(
  title: "Infographie Print",
  description: "Cette formation vous apportera le savoir faire autour de la retouche photo, du dessin vectoriel et de la mise en page afin de réaliser Flyers, affiches, livrets... Vous n'aurez plus qu'à imprimer !

Logiciels : Photoshop, Illustrator, Indesign.",
  picture: "http://www.virtualart.pro/images/interface/ic-print.jpg",
  visible: true)
p pr
#
# ==================== Lecture ====================
# === Au moins 3 pour chaque cours/logiciel
#-----------------------------------------------------------------------------------------------------------------------------
# --- MULTIMEDIA 2D --- PHOTOSHOP
#
l0 = Lecture.create!(
  software: ae, # On réutilise le software défini plus haut.
  course: m2d,
  title: "Atelier Animation gratuit",
  video: "Hp-TCNuBtuc",
  description: "...",
  order: "1",
  visible: true)
p l0
#
l1 = Lecture.create!(
  software: ph, # On réutilise le software défini plus haut.
  course: m2d,
  title: "Photoshop - interface",
  video: "6O2qmXxMfEk",
  description: "découverte de l'interface pour une bonne organisation.",
  order: "1",
  visible: true)
p l1
#
l2 = Lecture.create!(
  software: ph, # On réutilise le software défini plus haut.
  course: m2d,
  title: "Photoshop - les calques",
  video: "CKhaqZpBij0",
  description: "la gestion des calques, pour une grande souplesse de travail.",
  order: "1",
  visible: true)
p l2
#
l3 = Lecture.create!(
  software: ph, # On réutilise le software défini plus haut.
  course: m2d,
  title: "Photoshop - les sélections",
  video: "PoNJ2z3eKcM",
  description: "Apprenons à sélectionner pour découper, remplir et transformer.",
  order: "1",
  visible: true)
p l3
#
# --- MULTIMEDIA 2D --- MOHO
l1 = Lecture.create!(
  software: mo, # On réutilise le software défini plus haut.
  course: m2d,
  title: "Moho - interface",
  video: "Hp-TCNuBtuc",
  description: "Découvrez les fonctionnalités de Moho",
  order: "1",
  visible: true)
p l1
#
l2 = Lecture.create!(
  software: mo, # On réutilise le software défini plus haut.
  course: m2d,
  title: "Moho - l'animation",
  video: "Hp-TCNuBtuc",
  description: "décrire la vidéo ici.",
  order: "1",
  visible: true)
p l2
#
l3 = Lecture.create!(
  software: mo, # On réutilise le software défini plus haut.
  course: m2d,
  title: "Moho - la création",
  video: "Hp-TCNuBtuc",
  description: "décrire la vidéo ici.",
  order: "1",
  visible: true)
p l3
#
# --- MULTIMEDIA 2D --- GRAPHISME
l1 = Lecture.create!(
  software: gra, # On réutilise le software défini plus haut.
  course: m2d,
  title: "Dessin - le corps",
  video: "Hp-TCNuBtuc",
  description: "...",
  order: "1",
  visible: true)
p l1
#
l2 = Lecture.create!(
  software: ae, # On réutilise le software défini plus haut.
  course: m2d,
  title: "Dessin - deuxieme",
  video: "Hp-TCNuBtuc",
  description: "...",
  order: "1",
  visible: true)
p l2
#
l3 = Lecture.create!(
  software: ae, # On réutilise le software défini plus haut.
  course: m2d,
  title: "Dessins - troisième",
  video: "Hp-TCNuBtuc",
  description: "...",
  order: "1",
  visible: true)
p l3
#
# --- MULTIMEDIA 2D --- AFTER EFFECTS
l1 = Lecture.create!(
  software: ae, # On réutilise le software défini plus haut.
  course: m2d,
  title: "After Effects - pinceaux et formes",
  video: "gO7kBCQX7nI",
  description: "Le dessin dans After Effects.",
  order: "1",
  visible: true)
p l1
#
l2 = Lecture.create!(
  software: ae, # On réutilise le software défini plus haut.
  course: m2d,
  title: "After Effects - principes d'animation",
  video: "veDstKBvStg ",
  description: "Animation d'une balle pour bien commencer.",
  order: "1",
  visible: true)
p l2
#
l3 = Lecture.create!(
  software: ae, # On réutilise le software défini plus haut.
  course: m2d,
  title: "After Effects - les effets",
  video: "Qbvs4Xd5WfU",
  description: "La liste d'effets, dont les réglages classiques.",
  order: "1",
  visible: true)
p l3
#
#-----------------------------------------------------------------------------------------------------------------------------
# --- MULTIMEDIA 3D --- MAYA
#
l0 = Lecture.create!(
  software: ma, # On réutilise le software défini plus haut.
  course: m3d,
  title: "Atelier 3D gratuit",
  video: "Hp-TCNuBtuc",
  description: "...",
  order: "1",
  visible: true)
p l0
#
l1 = Lecture.create!(
  software: ma, # On réutilise le software défini plus haut.
  course: m3d,
  title: "Maya - interface",
  video: "iP8tSY0neXU",
  description: "L'organisation et les possibilités qu'offre Maya.",
  order: "1",
  visible: true)
p l1
#
l2 = Lecture.create!(
  software: ma, # On réutilise le software défini plus haut.
  course: m3d,
  title: "Maya - créations de base",
  video: "qSZXDT7Al_A",
  description: "Bien créer et manipuler ses objets.",
  order: "1",
  visible: true)
p l2
#
l3 = Lecture.create!(
  software: ma, # On réutilise le software défini plus haut.
  course: m3d,
  title: "Maya - les sélections",
  video: "NAtOqeAjigg",
  description: "Les solutions de sélections pour faciliter la modélisations.",
  order: "1",
  visible: true)
p l3
#
# --- MULTIMEDIA 3D --- PHOTOSHOP
l1 = Lecture.create!(
  software: ph, # On réutilise le software défini plus haut.
  course: m3d,
  title: "Photoshop - interface",
  video: "6O2qmXxMfEk",
  description: "découverte de l'interface pour une bonne organisation.",
  order: "1",
  visible: true)
p l1
#
l2 = Lecture.create!(
  software: ph, # On réutilise le software défini plus haut.
  course: m3d,
  title: "Photoshop - les calques",
  video: "CKhaqZpBij0",
  description: "la gestion des calques, pour une grande souplesse de travail.",
  order: "1",
  visible: true)
p l2
#
l3 = Lecture.create!(
  software: ph, # On réutilise le software défini plus haut.
  course: m3d,
  title: "Photoshop - les sélections",
  video: "PoNJ2z3eKcM",
  description: "Apprenons à sélectionner pour découper, remplir et transformer.",
  order: "1",
  visible: true)
p l3
#
# --- MULTIMEDIA 3D --- MUDBOX
l1 = Lecture.create!(
  software: mu, # On réutilise le software défini plus haut.
  course: m3d,
  title: "Mudbox - interface",
  video: "IRT2Q8tBGOw",
  description: "Découvrez Mudbox.",
  order: "1",
  visible: true)
p l1
#
l2 = Lecture.create!(
  software: mu, # On réutilise le software défini plus haut.
  course: m3d,
  title: "Mudbox - gestions des couches",
  video: "9iszhenGJ68",
  description: "Faites des détails grâce aux couches.",
  order: "1",
  visible: true)
p l2
#
l3 = Lecture.create!(
  software: mu, # On réutilise le software défini plus haut.
  course: m3d,
  title: "Mudbox - sculpting",
  video: "mettre un ID youtube ici",
  description: "C'est parti pour sculpter les détails !",
  order: "1",
  visible: true)
p l3
#
# --- MULTIMEDIA 3D --- AFTER EFFECTS
l1 = Lecture.create!(
  software: ae, # On réutilise le software défini plus haut.
  course: m3d,
  title: "After Effects - principes d'animation",
  video: "veDstKBvStg ",
  description: "Animation d'une balle pour bien commencer.",
  order: "1",
  visible: true)
p l1
#
l2 = Lecture.create!(
  software: ae, # On réutilise le software défini plus haut.
  course: m3d,
  title: "After Effects - principes d'animation",
  video: "veDstKBvStg ",
  description: "Animation d'une balle pour bien commencer.",
  order: "1",
  visible: true)
p l2
#
l3 = Lecture.create!(
  software: ae, # On réutilise le software défini plus haut.
  course: m3d,
  title: "After Effects - les effets",
  video: "Qbvs4Xd5WfU",
  description: "La liste d'effets, dont les réglages classiques.",
  order: "1",
  visible: true)
p l3
#
# --- MULTIMEDIA 3D --- GRAPHISME
l1 = Lecture.create!(
  software: gra, # On réutilise le software défini plus haut.
  course: m3d,
  title: "Dessin - le corps",
  video: "Hp-TCNuBtuc",
  description: "...",
  order: "1",
  visible: true)
p l1
#
l2 = Lecture.create!(
  software: gra, # On réutilise le software défini plus haut.
  course: m3d,
  title: "Dessin - deuxieme",
  video: "Hp-TCNuBtuc",
  description: "...",
  order: "1",
  visible: true)
p l2
#
l3 = Lecture.create!(
  software: gra, # On réutilise le software défini plus haut.
  course: m3d,
  title: "Dessins - troisième",
  video: "Hp-TCNuBtuc",
  description: "...",
  order: "1",
  visible: true)
p l3
#
#-----------------------------------------------------------------------------------------------------------------------------
# --- BD NUMERIQUE --- CLIP STUDIO PAINT
#
l0 = Lecture.create!(
  software: csp, # On réutilise le software défini plus haut.
  course: bd,
  title: "Atelier BD gratuit",
  video: "Hp-TCNuBtuc",
  description: "...",
  order: "1",
  visible: true)
p l0
#
l1 = Lecture.create!(
  software: csp, # On réutilise le software défini plus haut.
  course: bd,
  title: "Clip Studio Paint - interface",
  video: "Hp-TCNuBtuc",
  description: "décrire la vidéo ici.",
  order: "1",
  visible: true)
p l1
#
l2 = Lecture.create!(
  software: csp, # On réutilise le software défini plus haut.
  course: bd,
  title: "Clip Studio Paint - deuxieme",
  video: "Hp-TCNuBtuc",
  description: "décrire la vidéo ici.",
  order: "1",
  visible: true)
p l2
#
l3 = Lecture.create!(
  software: csp, # On réutilise le software défini plus haut.
  course: bd,
  title: "Clip Studio Paint - troisieme",
  video: "Hp-TCNuBtuc",
  description: "décrire la vidéo ici.",
  order: "1",
  visible: true)
p l3
#
# --- BD NUMERIQUE --- PHOTOSHOP
l1 = Lecture.create!(
  software: ps, # On réutilise le software défini plus haut.
  course: bd,
  title: "Photoshop - interface",
  video: "6O2qmXxMfEk",
  description: "découverte de l'interface pour une bonne organisation.",
  order: "1",
  visible: true)
p l1
#
l2 = Lecture.create!(
  software: ps, # On réutilise le software défini plus haut.
  course: bd,
  title: "Photoshop - les calques",
  video: "CKhaqZpBij0",
  description: "la gestion des calques, pour une grande souplesse de travail.",
  order: "1",
  visible: true)
p l2
#
l3 = Lecture.create!(
  software: ps, # On réutilise le software défini plus haut.
  course: bd,
  title: "Photoshop - les sélections",
  video: "PoNJ2z3eKcM",
  description: "Apprenons à sélectionner pour découper, remplir et transformer.",
  order: "1",
  visible: true)
p l3
#
# --- BD NUMERIQUE --- GRAPHISME
l1 = Lecture.create!(
  software: gra, # On réutilise le software défini plus haut.
  course: bd,
  title: "Dessin - le corps",
  video: "Hp-TCNuBtuc",
  description: "...",
  order: "1",
  visible: true)
p l1
#
l2 = Lecture.create!(
  software: gra, # On réutilise le software défini plus haut.
  course: bd,
  title: "Dessin - deuxieme",
  video: "Hp-TCNuBtuc",
  description: "...",
  order: "1",
  visible: true)
p l2
#
l3 = Lecture.create!(
  software: gra, # On réutilise le software défini plus haut.
  course: bd,
  title: "Dessin - troisième",
  video: "Hp-TCNuBtuc",
  description: "...",
  order: "1",
  visible: true)
p l3
#
#-----------------------------------------------------------------------------------------------------------------------------
# --- INFOGRAPHIE PRINT --- PHOTOSHOP
l0 = Lecture.create!(
  software: ph, # On réutilise le software défini plus haut.
  course: pr,
  title: "Atelier infographie gratuit",
  video: "Hp-TCNuBtuc",
  description: "...",
  order: "1",
  visible: true)
p l0
#
l1 = Lecture.create!(
  software: ps, # On réutilise le software défini plus haut.
  course: pr,
  title: "Photoshop - interface",
  video: "6O2qmXxMfEk",
  description: "découverte de l'interface pour une bonne organisation.",
  order: "1",
  visible: true)
p l1
#
l2 = Lecture.create!(
  software: ps, # On réutilise le software défini plus haut.
  course: pr,
  title: "Photoshop - les calques",
  video: "CKhaqZpBij0",
  description: "la gestion des calques, pour une grande souplesse de travail.",
  order: "1",
  visible: true)
p l2
#
l3 = Lecture.create!(
  software: ps, # On réutilise le software défini plus haut.
  course: pr,
  title: "Photoshop - les sélections",
  video: "PoNJ2z3eKcM",
  description: "Apprenons à sélectionner pour découper, remplir et transformer.",
  order: "1",
  visible: true)
p l3
#
# --- INFOGRAPHIE PRINT --- ILLUSTRATOR
l1 = Lecture.create!(
  software: ai, # On réutilise le software défini plus haut.
  course: pr,
  title: "Illustrator - interface",
  video: "GDVXPKUujOs",
  description: "Découverte de la logique du dessin vectoriel et d'Illustrator.",
  order: "1",
  visible: true)
p l1
#
l2 = Lecture.create!(
  software: ai, # On réutilise le software défini plus haut.
  course: pr,
  title: "Illutrator - création de base",
  video: "G3b4KNLQobE",
  description: "Bien débuter la création et manipulation de formes.",
  order: "1",
  visible: true)
p l2
#
l3 = Lecture.create!(
  software: ai, # On réutilise le software défini plus haut.
  course: pr,
  title: "Illustrator - gestions des couleurs",
  video: "fKfvNN65sv8",
  description: "Mettez de la couleur dans vos dessins !",
  order: "1",
  visible: true)
p l3
#
# --- INFOGRAPHIE PRINT --- INDESIGN
l1 = Lecture.create!(
  software: ind, # On réutilise le software défini plus haut.
  course: pr,
  title: "Indesign - interface",
  video: "uQC96z7znPc",
  description: "découvrez l'interface d'Indesign.",
  order: "1",
  visible: true)
p l1
#
l2 = Lecture.create!(
  software: ind, # On réutilise le software défini plus haut.
  course: pr,
  title: "Indesign - blocs de base",
  video: "-y6HZNIQjUc",
  description: "L'utilisation des blocs dans une mise en pages.",
  order: "1",
  visible: true)
p l2
#
l3 = Lecture.create!(
  software: ind, # On réutilise le software défini plus haut.
  course: pr,
  title: "Indesign - blocs d'images",
  video: "oLDHUhWyUe4",
  description: "Tout ce qu'il faut savoir sur les images dans Indesign.",
  order: "1",
  visible: true)
p l3
#
# --- INFOGRAPHIE PRINT --- GRAPHISME
l1 = Lecture.create!(
  software: gra, # On réutilise le software défini plus haut.
  course: pr,
  title: "Print - les couleurs",
  video: "Hp-TCNuBtuc",
  description: "...",
  order: "1",
  visible: true)
p l1
#
l2 = Lecture.create!(
  software: gra, # On réutilise le software défini plus haut.
  course: pr,
  title: "Print - le papier",
  video: "Hp-TCNuBtuc",
  description: "...",
  order: "1",
  visible: true)
p l2
#
l3 = Lecture.create!(
  software: gra, # On réutilise le software défini plus haut.
  course: pr,
  title: "DPrint - troisième",
  video: "Hp-TCNuBtuc",
  description: "...",
  order: "1",
  visible: true)
p l3
#
# ==================== UsersLecture ====================
# === On en crée 1 seul pour tester
#
ul1 = UsersLecture.create!(
  user: u1,
  lecture: l1,
  notes: "Appréciation.")
p ul1
#
# ==================== Realisation ====================
# === Au moins 3 dans chaque cours
#----------------------------------------------------------------------------- MULTIMEDIA 2D
r1 = Realisation.create!(
  course: m2d,
  user: u1,
  title: "Anonyme",
  link: "http://www.virtualart.pro/images/realisations/eleves/2d/combat.jpg",
  thumbnail: "http://www.virtualart.pro/images/realisations/eleves/icone 2d/combat.jpg")
p r1
#
r2 = Realisation.create!(
  course: m2d,
  user: u2,
  title: "Anonyme",
  link: "http://www.virtualart.pro/images/realisations/eleves/2d/couverture1.jpg",
  thumbnail: "http://www.virtualart.pro/images/realisations/eleves/icone 2d/couverture1.jpg")
p r2
#
r3 = Realisation.create!(
  course: m2d,
  user: u3,
  title: "Anonyme",
  link: "http://www.virtualart.pro/images/realisations/eleves/2d/couverture2.jpg",
  thumbnail: "http://www.virtualart.pro/images/realisations/eleves/icone 2d/couverture2.jpg")
p r3
#
r4 = Realisation.create!(
  course: m2d,
  user: u4,
  title: "Plongeuse",
  link: "https://www.youtube.com/watch?v=lR7n4zTqgX0",
  thumbnail: "http://www.virtualart.pro/images/realisations/eleves/icone 2d/2danim1.jpg")
p r4
#
#----------------------------------------------------------------------------- MULTIMEDIA 3D
r1 = Realisation.create!(
  course: m3d,
  user: u1,
  title: "Anonyme",
  link: "http://www.virtualart.pro/images/realisations/eleves/3d/eng.jpg",
  thumbnail: "http://www.virtualart.pro/images/realisations/eleves/icone 3d/eng.jpg")
p r1
#
r2 = Realisation.create!(
  course: m3d,
  user: u2,
  title: "Anonyme",
  link: "http://www.virtualart.pro/images/realisations/eleves/3d/moulin2.jpg",
  thumbnail: "http://www.virtualart.pro/images/realisations/eleves/icone 3d/moulin2.jpg")
p r2
#
r3 = Realisation.create!(
  course: m3d,
  user: u3,
  title: "Anonyme",
  link: "http://www.virtualart.pro/images/realisations/eleves/3d/crobot1.jpg",
  thumbnail: "http://www.virtualart.pro/images/realisations/eleves/icone 3d/robot1.jpg")
p r3
#
#----------------------------------------------------------------------------- BD NUMERIQUE
r1 = Realisation.create!(
  course: bd,
  user: u1,
  title: "Anonyme",
  link: "http://www.virtualart.pro/images/realisations/eleves/bd/asticot.jpg",
  thumbnail: "http://www.virtualart.pro/images/realisations/eleves/icone bd/asticot.jpg")
p r1
#
r2 = Realisation.create!(
  course: bd,
  user: u2,
  title: "Anonyme",
  link: "http://www.virtualart.pro/images/realisations/eleves/bd/bd1.jpg",
  thumbnail: "http://www.virtualart.pro/images/realisations/eleves/icone bd/bd1.jpg")
p r2
#
r3 = Realisation.create!(
  course: bd,
  user: u3,
  title: "Anonyme",
  link: "http://www.virtualart.pro/images/realisations/eleves/bd/bd2.jpg",
  thumbnail: "http://www.virtualart.pro/images/realisations/eleves/icone bd/bd2.jpg")
p r3
#
#----------------------------------------------------------------------------- INFOGRAPHIE PRINT
r1 = Realisation.create!(
  course: pr,
  user: u1,
  title: "Anonyme",
  link: "http://www.virtualart.pro/images/realisations/eleves/print/print1.jpg",
  thumbnail: "http://www.virtualart.pro/images/realisations/eleves/icone print/print1.jpg")
p r1
#
r2 = Realisation.create!(
  course: pr,
  user: u2,
  title: "Anonyme",
  link: "http://www.virtualart.pro/images/realisations/eleves/print/print2.jpg",
  thumbnail: "http://www.virtualart.pro/images/realisations/eleves/icone print/print2.jpg")
p r2
#
r3 = Realisation.create!(
  course: pr,
  user: u3,
  title: "Anonyme",
  link: "http://www.virtualart.pro/images/realisations/eleves/print/print3.jpg",
  thumbnail: "http://www.virtualart.pro/images/realisations/eleves/icone print/print3.jpg")
p r3
#

# ==================== Stagetype ====================
# === Les créer tous
#
st1 = Stagetype.create!(
  title: "Stage Illustration",
  description: " Vous découvrirez 2 techniques de mise en couleurs de vos dessins!

- Logiciel : Photoshop
- Dessin sur papier ou tablette graphique
- Prise en main de Photoshop
- Techniques de Cel-shading
- Techniques aux pinceaux numérique
- Ajout de textures et motifs",
  picture: "http://www.virtualart.pro/images/interface/ic-stageillu.jpg",
  visible: true)
p st1
#
st2 = Stagetype.create!(
  title: "Stage Montage photos",
  description: " Lors de ce stage, vous verrez tout le nécessaire pour rendre vos photos plus belles et aussi les assembler en de toutes nouvelles images !

- Logiciel : Photoshop
- Règles techniques de l’image (DPI, cadrage)
- Découpage et montage (calques, sélection...)
- Suppression des défault
- Corrections (colorimétrie, déformation ...)
- Création d’un matte Painting",
  picture: "http://www.virtualart.pro/images/interface/ic-stagephoto.jpg",
  visible: true)
p st2
#
st3 = Stagetype.create!(
  title: "Stage Infographie Print",
  description: " Vous verrez toutes les bases et étapes à suivre pour bien commencer en communication visuelle.

- Logiciel : Photoshop, Illustrator, Indesign
- Ce qu'il faut savoir sur le Print
- Les étapes de réalisations :
Photoshop : préparation d'éléments photos
Illustrator : dessin vectoriel (logo)
InDesign : mise en page
- Création d’une petite plaquette",
  picture: "http://www.virtualart.pro/images/interface/ic-stageprint.jpg",
  visible: true)
p st3
#
st4 = Stagetype.create!(
  title: "Stage BD Manga",
  description: " Petit condensé des étapes utiles pour bien commencer une BD sur ordinateur !

- Logiciel : Clip Studio
- Recherche du scénario
- Recherche des personnages
- Mise en page
- encrage numérique ou sur tablette lumineuse
- Mise en couleur ou en trames de la planche
- Ajout des bulles et texte sur ordinateur",
  picture: "http://www.virtualart.pro/images/interface/ic-stagebd.jpg",
  visible: true)
p st4

#
# ==================== Stage ====================
# === Au moins 1 de chaque type
#

s1 = Stage.create!(
  stagetype: st1,
  timeslot: "jeudi 2 et vendredi 3 novembre 2017",
  visible: true )
p s1
#
s2 = Stage.create!(
  stagetype: st1,
  timeslot: "jeudi 1 et vendredi 2 mars 2018",
  visible: true )
p s2
#
s3 = Stage.create!(
  stagetype: st1,
  timeslot: "jeudi 26 et vendredi 27 avril 2018",
  visible: true )
p s3
#
s4 = Stage.create!(
  stagetype: st1,
  timeslot: "lundi 10 et mardi 11 juillet 2018",
  visible: true )
p s4
#---
s5 = Stage.create!(
  stagetype: st2,
  timeslot: "Samedi 4 et dimanche 5 novembre 2017",
  visible: true )
p s5
#
s6 = Stage.create!(
  stagetype: st2,
  timeslot: "samedi 28 et dimanche 29 avril 2018",
  visible: true )
p s6
#
s7 = Stage.create!(
  stagetype: st2,
  timeslot: "samedi 12 et dimanche 13 juillet 2018",
  visible: true )
p s7
#---
s8 = Stage.create!(
  stagetype: st3,
  timeslot: "samedi 6 et dimanche 7 janvier 2018",
  visible: true )
p s8
#
s9 = Stage.create!(
  stagetype: st3,
  timeslot: "samedi 3 et dimanche 4 mars 2018",
  visible: true )
p s9
#
s10 = Stage.create!(
  stagetype: st3,
  timeslot: "vendredi 14 et samedi 15 juillet 2018",
  visible: true )
p s10
#---
s11 = Stage.create!(
  stagetype: st4,
  timeslot: "mardi 31 oct. et mercredi 1 nov. 2017",
  visible: true )
p s11
#
s12 = Stage.create!(
  stagetype: st4,
  timeslot: "mardi 27 et mercredi 28 février 2018",
  visible: true )
p s12
#
s13 = Stage.create!(
  stagetype: st4,
  timeslot: "mardi 24 et mercredi 25 avril 2018",
  visible: true )
p s13
#
s14 = Stage.create!(
  stagetype: st4,
  timeslot: "mercredi 11 et jeudi 12 juillet 2018",
  visible: true )
p s14
#
# ==================== UsersStage ====================
# === On en crée 1 seul pour tester
#
us1 = UsersStage.create!(
  user: u1,
  stage: s1,
  confirmed: false)
p us1
#
# ==================== Timeslot ====================
# === Cela pourra changer, en mettre quelques-uns
#
t1 = Timeslot.create!(
  title: "Mercredi 13h30 - 15h00",
  visible: true)
p t1
#
t2 = Timeslot.create!(
  title: "Mercredi 15h00 - 16h30",
  visible: true)
p t2
#
t3 = Timeslot.create!(
  title: "Mercredi 16h30 - 18h00",
  visible: true)
p t3
#
t4 = Timeslot.create!(
  title: "Mercredi 18h00 - 19h30",
  visible: true)
p t4
#
t5 = Timeslot.create!(
  title: "Vendredi 18h00 - 19h30",
  visible: true)
p t5
#
t6 = Timeslot.create!(
  title: "Samedi 13h30 - 15h00",
  visible: true)
p t6
#
t7 = Timeslot.create!(
  title: "Samedi 15h00 - 16h30",
  visible: true)
p t7
#
t8 = Timeslot.create!(
  title: "Samedi 16h30 - 18h00",
  visible: true)
p t8
#
# ==================== UsersCourse ====================
# === On en crée 1 seul pour tester
#
uc1 = UsersCourse.create!(
  user: u1,
  course: ph,
  timeslot: t1,
  confirmed: true)
p uc1
#
# ==================== Block ====================
# === Créer tous les blocs sachant qu'il y a des champs facultatifs
#
# --- PAGE ACCUEIL
b2 = Block.create!(
  tag: "carousel1",
  title: "Carousel",
  description: "",
  picture: "http://www.virtualart.pro/images/interface/carousel1.jpg",
  link: "",
  visible: true,
  footer: false)
p b2
#
b2 = Block.create!(
  tag: "carousel2",
  title: "Carousel",
  description: "",
  picture: "http://www.virtualart.pro/images/interface/carousel1.jpg",
  link: "",
  visible: true,
  footer: false)
p b2
#
b2 = Block.create!(
  tag: "carousel3",
  title: "Carousel",
  description: "",
  picture: "http://www.virtualart.pro/images/interface/carousel1.jpg",
  link: "",
  visible: true,
  footer: false)
p b2
#
b2 = Block.create!(
  tag: "carousel4",
  title: "Carousel",
  description: "",
  picture: "http://www.virtualart.pro/images/interface/carousel2.jpg",
  link: "",
  visible: true,
  footer: false)
p b2
#
b2 = Block.create!(
  tag: "carousel5",
  title: "Carousel",
  description: "",
  picture: "http://www.virtualart.pro/images/interface/carousel2.jpg",
  link: "",
  visible: true,
  footer: false)
p b2
#
b2 = Block.create!(
  tag: "carousel6",
  title: "Carousel",
  description: "",
  picture: "http://www.virtualart.pro/images/interface/carousel2.jpg",
  link: "",
  visible: true,
  footer: false)
p b2
#
b2 = Block.create!(
  tag: "accueil1",
  title: "Plongez avec nous dans le monde de l'image numérique !",
  description: "Vous avez toujours eu envie de mettre en image vos univers ? que ce soit pour le loisir ou parce que vous vous destinez aux metiers de l'infographie, nous sommes là pour vous enseigner ces techniques ! vous pourrez créer des illustrations, des BDs, des animation 2D et 3D, ou encore des logos et flyers. Sur ordinateur, bien sûr, avec des logiciels pro comme Photoshop, Maya et d'autres encore :",
  picture: "http://www.virtualart.pro/images/interface/logiciels.png",
  link: "",
  visible: true,
  footer: false)
p b2
#
b2 = Block.create!(
  tag: "accueil2",
  title: "vidéo",
  description: "",
  picture: "",
  link: "Hp-TCNuBtuc",
  visible: true,
  footer: false)
p b2
#
b2 = Block.create!(
  tag: "accueil3",
  title: "",
  description: "Nous vous accueillons dans un atelier extra scolaire dans le coeur de Toulouse à 2 pas du métro Jean Jaurès. tout humanoïde entre 8 et 888ans,  peut venir apprendre les arcanes de l'infographie et donner vie à son imagination !
L'enseignement aussi est 2.0 ! Vous aurez accès à tous les cours en vidéos sur notre site et pendant les séances nous feront des applications ou vos projets, en avançant à votre rythme.",
  picture: "",
  link: "",
  visible: true,
  footer: false)
p b2
#
b2 = Block.create!(
  tag: "accueil4",
  title: "Sur place, nous sommes tout équipé :",
  description: "Vous pourrez utiliser nos PCs, les logiciels, les tablette graphique (dont une cintiq dont nous ne sommes pas peu fière), un scanner A3 pour ceux qui voit grand, des tablettes lumineuse toujours utile de nos jours, un micro pour les bruitages de vos films, et même un fond vert pour vous filmer entre amis. On a aussi un peu de matériel de dessin, la base.",
  picture: "http://www.virtualart.pro/images/interface/materiels.png",
  link: "",
  visible: true,
  footer: false)
p b2
#
b2 = Block.create!(
  tag: "news",
  title: "News",
  description: "Les inscriptions sont ouvertes ! Les cours reprennent la semaine du 25 septembre, n'hésitez pas à m'appeler pour toutes questions :)",
  picture: "", # Pas besoin d'image dans les news
  link: "", # Pas besoin de lien non plus
  visible: true,
  footer: false)
p b2
#
b3 = Block.create!(
  tag: "post",
  title: "Dernière réalisation",
  description: "", # Pas besoin de description pour le dernier post l'image parle d'elle-même
  picture: "http://www.virtualart.pro/images/divers/inu.jpg",
  link: "lien vers le post",
  visible: true,
  footer: false)
p b3
#
b26 = Block.create!(
  tag:"coeur",
  title:"Coup de coeur", # Il faudra réfléchir à l'organisation de la page d'accueil >> NE PAS METTRE
  description: "",
  picture: "",
  link: "",
  visible: true,
  footer: false)
p b26
#
b4 = Block.create!(
  tag: "livredor",
  title: "Livre d’Or",
  description: "Venez commenter :)",
  picture: "",
  link: "",
  visible: false, # Invisible pour l'instant : à développer plus tard.
  footer: false)
p b4
#
# --- PAGE CONTACT
b5 = Block.create!(
  tag: "lieu",
  title: "Lieu",
  description: "",
  picture: "http://www.virtualart.pro/images/interface/local.jpg",
  link: "https://maps.google.fr/maps?f=q&amp;source=s_q&amp;hl=fr&amp;geocode=&amp;q=virtual+art&amp;aq=&amp;sll=43.604652,1.444209&amp;sspn=0.20659,0.528374&amp;ie=UTF8&amp;hq=virtual+art&amp;hnear=&amp;t=m&amp;cid=4733741065628515629&amp;ll=43.606624,1.448779&amp;spn=0.002719,0.00456&amp;z=17&amp;output=embed",
  visible: true,
  footer: false)
p b5
#
b6 = Block.create!(
  tag: "coo",
  title: "Coordonnées",
  description: "8 rue Dalayrac
  31000 Toulouse
  métro Jean Jaurès

  contact@virtualart.pro
  06.74.75.30.23
  09.54.11.14.31", # Passer à la ligne normalement
  picture: "",
  link: "",
  visible: true,
  footer: false)
p b6
#
b7 = Block.create!(
  tag: "ouverture",
  title: "Horaires d'ouverture",
  description: "L’atelier est ouvert selon les inscriptions aux cours.

Une permanence est assurée les mercredis et samedis de 13h30 à 19h30 hors vacances scolaire. Nous sommes joignable par téléphone tous les jours.",
  picture: "",
  link: "",
  visible: true,
  footer: false)
p b7
#
# --- PAGE COURS
b1 = Block.create!(
  tag: "inscription_cours",
  title: "Inscription Cours",
  description: "Vous souhaitez vous inscrire à un cours ? Accédez ici au formulaire.",
  link: "",
  visible: true,
  footer: false)
p b1
#
b8 = Block.create!(
  tag: "planning",
  title: "Planning",
  description: "Choisissez un de ces créneaux, au choix !
  Mercredi :
  13h30 - 15h / 15h - 16h30 / 16h30 - 18h / 18h - 19h30
  Vendredi :
  18h - 19h30
  Samedi :
  13h30 - 15h / 15h - 16h30 / 16h30 - 18h",
  picture: "",
  link: "",
  visible: true,
  footer: false)
p b8
#
b9 = Block.create!(
  tag: "tarifs1",
  title: "Tarifs",
  description: "VIDEOS + SEANCES 1H30
  PAR SEMAINE :",
  picture: "http://www.virtualart.pro/images/interface/prixseances.png",
  link: "",
  visible: true,
  footer: false)
p b9
#
b10 = Block.create!(
  tag: "tarifs2",
  title: "",
  description: "UNIQUEMENT VIDEOS :

  Si vous n'êtes pas sur Toulouse ou êtes autonomes, Avec cette solution, toutes les vidéos du programme choisi sont disponible pendant le nombre de mois que vous prenez.",
  picture: "http://www.virtualart.pro/images/interface/prixvideos.png",
  link: "",
  visible: true,
  footer: false)
p b10
#
# --- PAGE PROFIL
b11 = Block.create!(
  tag:"prof1",
  title:"Professeur", # faire un blox texte + image a chaque fois x4
  description:"Estelle BOUSSOT",
  picture:"http://www.virtualart.pro/images/interface/profil1.jpg",
  link: "",
  visible: true,
  footer: false)
p b11
#
b12 = Block.create!(
  tag:"prof2",
  title:"",
  description:"Passionnée par le dessin, j'ai intégré, après le baccalauréat, LISAA (L'Institut Supérieur des Arts Appliqués) à Paris, dont j'ai été diplômée en animation 2D avec mention. Puis, pour compléter mes connaissances, j'ai poursuivi mes études à A.T.I. (Art et Technologie de l'Image) où j'ai pu apprendre la 3D et les bases de la programmation.",
  picture:"http://www.virtualart.pro/images/interface/profil2.jpg",
  link: "",
  visible: true,
  footer: false)
p b12
#
b13 = Block.create!(
  tag:"prof3",
  title:"",
  description:"Après avoir travaillé dans une agence de communication, puis en freelance, j'ai découvert l’enseignement en animant des ateliers de bandes dessinées et de flip book en école primaire puis en école d’art appliqué.",
  picture:"http://www.virtualart.pro/images/interface/profil3.jpg",
  link: "",
  visible: true,
  footer: false)
p b13
#
b14 = Block.create!(
  tag:"prof4",
  title:"",
  description:"J’ai naturellement voulu continuer dans cette voie en créant Virtual Art. Je propose au grand public, sous forme de cours extra scolaire et de stages,  des formations sur les logiciels d’infographie et d’acompagner chacun dans la mise en place de projets personnels. L’art et l’infographie sont pour moi étroitement lié, le choix du média étant au service d’une idée, et non l’inverse. ",
  picture:"http://www.virtualart.pro/images/interface/profil4.jpg",
  link: "",
  visible: true,
  footer: false)
p b14
#
b15 = Block.create!(
  tag: "parcours",
  title: "Parcours",
  description: "Création de Virtual Art en 2011 jusqu’à nos jours

Enseignante à Ynov de 2014 à 2017

Travail en Freelance 2010-2011

Travail de graphiste 2D, 3D à Communicas 2008-2010

Master 3D à ATI de 2006 à 2009

Diplôme en Animation 2D à LISAA de 2003 à 2006",
  picture: "",
  link: "",
  visible: true,
  footer: false)
p b15
#
b16 = Block.create!(
  tag:"travail",
  title:"Mon travail",
  description:"Consulter mes travaux :
  http://boussotestelle.free.fr/",
  picture:"", # pas d'image
  link: "http://boussotestelle.free.fr/",
  visible: true,
  footer: false)
p b16
#
# --- PAGE REALISATION
b17 = Block.create!(
  tag:"propos",
  title:"A propos",
  description:"Pour vous donner une idée, voici une séléction des travaux d’élèves réalisés pendants les cours ou les stages. L’âge et le niveaux des élèves est mélangé.",
  picture:"", # pas d'image
  link: "",
  visible: true,
  footer: false)
p b17
#
# --- PAGE STAGES
b1 = Block.create!(
  tag: "inscription_stage",
  title: "Inscription Stages",
  description: "Vous souhaitez vous inscrire à un stage ? Accédez ici au formulaire.",
  link: "",
  visible: true,
  footer: false)
p b1
#
b18 = Block.create!(
  tag:"infos",
  title:"Infos pratique",
  description:"Horaires :
10h - 12h30 à 13h30 - 17h

Tarifs :
150€ les 2 jours /12h

Matériels fournis, amenez une clé USB pour récupérer vos travaux.

Le repas se prend en général à l’exterieur, mais nous mettons à disposition un petit frigo et un micro-onde si besoin.
",
  picture:"", # pas d'image
  link: "",
  visible: true,
  footer: false)
p b18
#
# --- FOOTER
b19 = Block.create!(
  tag:"deviantart",
  title:"Mon Deviant Art",
  description:"Consulter mes travaux ...",
  picture:"http....jpg",
  link: "",
  visible: true,
  footer: true)
p b19
#
b20 = Block.create!(
  tag:"webtoon",
  title:"Mes Webtoons",
  description:"",
  picture:"http....jpg",
  link: "",
  visible: false, # Pour l'instant on ne l'affiche pas
  footer: false)
p b20
#
b21 = Block.create!(
  tag: "twitter",
  title: "Mon fil Twitter",
  description: "",
  picture: "http....jpg",
  link: "",
  visible: true,
  footer: true)
p b21
#
b22 = Block.create!(
  tag: "facebook",
  title: "Ma page facebook",
  description: "",
  picture:"http....jpg",
  link: "",
  visible: true,
  footer: true)
p b22
#
b23 = Block.create!(
  tag: "youtube",
  title: "Ma chaîne Youtube",
  description: "",
  picture:"http....jpg",
  link: "",
  visible: true,
  footer: true)
p b23
#
b24 = Block.create!(
  tag: "instagram",
  title: "Mon Instagram",
  description: "",
  picture:"http....jpg",
  link: "",
  visible: true,
  footer: true)
p b24
#
#copyright en dur
b25 = Block.create!(
  tag: "copyright",
  title: "Mentions légales",
  description: "Tous droits réservés,",
  picture: "",
  link: "http://virtualart.pro/pages/mentions.html",
  visible: true,
  footer: true)
p b25
#
# ==================== CoursesSoftware ====================
# === On en crée 1 seul pour tester
#
cph = CourseSoftware.create!(
  course: m2d,
  software: ph)
p cph
