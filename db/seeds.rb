# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

@img_urls = %w[
  https://images.unsplash.com/photo-1713671164603-5529b29fa031?q=80&w=1974&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D
  https://images.unsplash.com/photo-1713709165079-fbdf3ce6b137?q=80&w=1974&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D
  https://images.unsplash.com/photo-1713757868581-84b98d1359b2?q=80&w=2069&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D
  https://images.unsplash.com/photo-1713761928558-89209d6a4d26?q=80&w=2043&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D
  https://images.unsplash.com/photo-1713682094261-8276e50379c9?q=80&w=1973&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D
  https://images.unsplash.com/photo-1713528190094-418c06a17b76?q=80&w=1974&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D
  https://images.unsplash.com/photo-1713714614660-18a216d92281?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D
  https://images.unsplash.com/photo-1713202294837-abbef9399ae4?q=80&w=1965&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D
  https://images.unsplash.com/photo-1713309423847-ba0fccfb8632?q=80&w=1964&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D
  https://images.pexels.com/photos/21936231/pexels-photo-21936231/free-photo-of-a-stork-is-sitting-on-top-of-a-nest.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1
  https://images.pexels.com/photos/20693639/pexels-photo-20693639/free-photo-of-a-single-yellow-flower-on-a-stick-in-a-vase.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1
  https://images.pexels.com/photos/20838667/pexels-photo-20838667/free-photo-of-brunette-woman-in-beige-coat-standing-on-beach.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1
  https://images.pexels.com/photos/21367058/pexels-photo-21367058/free-photo-of-man-working-on-laptop.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1
  https://images.pexels.com/photos/20800208/pexels-photo-20800208/free-photo-of-a-small-lighthouse-on-a-small-island-in-the-middle-of-the-water.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1
  https://images.pexels.com/photos/20843247/pexels-photo-20843247/free-photo-of-cadaques.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1
  https://images.pexels.com/photos/21795423/pexels-photo-21795423/free-photo-of-a-single-white-flower-on-a-branch.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1
  https://images.pexels.com/photos/20754347/pexels-photo-20754347/free-photo-of-coffee-and-chocolate-on-book-on-bed.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1
  https://images.pexels.com/photos/19467713/pexels-photo-19467713/free-photo-of-portrait-of-woman-in-coat-and-scarf.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1
  https://images.pexels.com/photos/1227799/pexels-photo-1227799.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1
  https://images.pexels.com/photos/20781073/pexels-photo-20781073/free-photo-of-marble-statue-in-vienna-austria.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1
  https://images.pexels.com/photos/21580869/pexels-photo-21580869/free-photo-of-spiritual-hug.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1
  https://images.pexels.com/photos/21854307/pexels-photo-21854307/free-photo-of-a-wedding-photo-taken-on-the-shore-of-lake-como.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1
  https://images.pexels.com/photos/21371172/pexels-photo-21371172.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1
  https://images.pexels.com/photos/20085523/pexels-photo-20085523/free-photo-of-a-blue-flower-is-surrounded-by-green-leaves.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1
  https://images.pexels.com/photos/17092847/pexels-photo-17092847/free-photo-of-aerial-photo-of-a-serpent-road-and-a-village-among-fields.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1
  https://images.pexels.com/photos/20769952/pexels-photo-20769952/free-photo-of-orient-garten.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1
  https://images.pexels.com/photos/18242112/pexels-photo-18242112/free-photo-of-footpath-in-the-mountains.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1
  https://images.pexels.com/photos/20780449/pexels-photo-20780449/free-photo-of-a-motorcycle-parked-in-front-of-a-wall-of-flowers.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1
  https://images.pexels.com/photos/21939689/pexels-photo-21939689/free-photo-of-a-couple-walking-down-a-street-in-front-of-a-yellow-building.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1
  https://images.pexels.com/photos/8252045/pexels-photo-8252045.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1
  https://images.pexels.com/photos/13012345/pexels-photo-13012345.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1
  https://images.pexels.com/photos/17562527/pexels-photo-17562527/free-photo-of-back-view-of-man-head.jpeg?auto=compress&cs=tinysrgb&w=600&lazy=load
  https://images.pexels.com/photos/18806641/pexels-photo-18806641/free-photo-of-black-and-white-portrait-of-a-young-woman-in-a-hat.jpeg?auto=compress&cs=tinysrgb&w=600&lazy=load
  https://images.pexels.com/photos/16776037/pexels-photo-16776037/free-photo-of-blonde-woman-in-black-clothes.jpeg?auto=compress&cs=tinysrgb&w=600&lazy=load
  https://images.pexels.com/photos/19055091/pexels-photo-19055091/free-photo-of-blonde-woman-in-colorful-coat-sitting-by-radiator.jpeg?auto=compress&cs=tinysrgb&w=600&lazy=load
  https://images.pexels.com/photos/20083427/pexels-photo-20083427/free-photo-of-blonde-woman-in-jacket-and-scarf.jpeg?auto=compress&cs=tinysrgb&w=600&lazy=load
  https://images.pexels.com/photos/16622042/pexels-photo-16622042/free-photo-of-blooming-flowers-of-hortensia.jpeg?auto=compress&cs=tinysrgb&w=600&lazy=load
  https://images.pexels.com/photos/17365277/pexels-photo-17365277/free-photo-of-brunette-woman-in-trench-coat.jpeg?auto=compress&cs=tinysrgb&w=600&lazy=load
  https://images.pexels.com/photos/21282630/pexels-photo-21282630/free-photo-of-buckingham-palace.jpeg?auto=compress&cs=tinysrgb&w=600&lazy=load
  https://images.pexels.com/photos/20843247/pexels-photo-20843247/free-photo-of-cadaques.jpeg?auto=compress&cs=tinysrgb&w=600&lazy=load
  https://images.pexels.com/photos/20280215/pexels-photo-20280215/free-photo-of-cheerful-woman-in-coat.jpeg?auto=compress&cs=tinysrgb&w=600&lazy=load
  https://images.pexels.com/photos/18713615/pexels-photo-18713615/free-photo-of-footpath-between-trees-in-forest.png?auto=compress&cs=tinysrgb&w=600&lazy=load
  https://images.pexels.com/photos/21656197/pexels-photo-21656197/free-photo-of-hot-air-balloons-flying-over-the-desert-in-egypt.jpeg?auto=compress&cs=tinysrgb&w=600&lazy=load
  https://images.pexels.com/photos/21282631/pexels-photo-21282631/free-photo-of-interior-of-dome-in-national-gallery-in-london.jpeg?auto=compress&cs=tinysrgb&w=600&lazy=load
  https://images.pexels.com/photos/15784770/pexels-photo-15784770/free-photo-of-landscape-of-mountain-range.jpeg?auto=compress&cs=tinysrgb&w=600&lazy=load
  https://images.pexels.com/photos/21282632/pexels-photo-21282632/free-photo-of-london-skyscrapers.jpeg?auto=compress&cs=tinysrgb&w=600&lazy=load
  https://images.pexels.com/photos/16521218/pexels-photo-16521218/free-photo-of-low-angle-shot-of-a-rocky-cliff.jpeg?auto=compress&cs=tinysrgb&w=600&lazy=load
  https://images.pexels.com/photos/19184762/pexels-photo-19184762/free-photo-of-man-sitting-and-working-on-macbook.jpeg?auto=compress&cs=tinysrgb&w=600&lazy=load
  https://images.pexels.com/photos/17544061/pexels-photo-17544061/free-photo-of-man-sitting-with-laptop-near-water.jpeg?auto=compress&cs=tinysrgb&w=600&lazy=load
  https://images.pexels.com/photos/17732012/pexels-photo-17732012/free-photo-of-man-working-on-laptop-in-black-and-white.jpeg?auto=compress&cs=tinysrgb&w=600&lazy=load
  https://images.pexels.com/photos/19486523/pexels-photo-19486523/free-photo-of-model-in-red-clothes.jpeg?auto=compress&cs=tinysrgb&w=600&lazy=load
  https://images.pexels.com/photos/21580867/pexels-photo-21580867/free-photo-of-mongolfiere-all-alba.jpeg?auto=compress&cs=tinysrgb&w=600&lazy=load
  https://images.pexels.com/photos/18144671/pexels-photo-18144671/free-photo-of-pelican-flying-in-the-sky.jpeg?auto=compress&cs=tinysrgb&w=600&lazy=load
  https://images.pexels.com/photos/19224675/pexels-photo-19224675/free-photo-of-plantation-on-hillside.jpeg?auto=compress&cs=tinysrgb&w=600&lazy=load
  https://images.pexels.com/photos/18786728/pexels-photo-18786728/free-photo-of-portrait-of-a-woman-on-a-square-in-black-and-white.jpeg?auto=compress&cs=tinysrgb&w=600&lazy=load
  https://images.pexels.com/photos/18842381/pexels-photo-18842381/free-photo-of-portrait-of-blonde-model-in-hat.jpeg?auto=compress&cs=tinysrgb&w=600&lazy=load
  https://images.pexels.com/photos/19039615/pexels-photo-19039615/free-photo-of-portrait-of-blonde-woman.jpeg?auto=compress&cs=tinysrgb&w=600&lazy=load
  https://images.pexels.com/photos/19467713/pexels-photo-19467713/free-photo-of-portrait-of-woman-in-coat-and-scarf.jpeg?auto=compress&cs=tinysrgb&w=600&lazy=load
  https://images.pexels.com/photos/15366575/pexels-photo-15366575/free-photo-of-portrait-of-woman-in-paris.jpeg?auto=compress&cs=tinysrgb&w=600&lazy=load
  https://images.pexels.com/photos/19503417/pexels-photo-19503417/free-photo-of-purple-flower-in-a-garden.jpeg?auto=compress&cs=tinysrgb&w=600&lazy=load
  https://images.pexels.com/photos/18021201/pexels-photo-18021201/free-photo-of-purple-flower-on-a-shrub.jpeg?auto=compress&cs=tinysrgb&w=600&lazy=load
  https://images.pexels.com/photos/16838623/pexels-photo-16838623/free-photo-of-road-among-fields-on-hillside-in-germany.jpeg?auto=compress&cs=tinysrgb&w=600&lazy=load
  https://images.pexels.com/photos/18816029/pexels-photo-18816029/free-photo-of-rock-on-the-background-of-a-mountain-range.jpeg?auto=compress&cs=tinysrgb&w=600&lazy=load
  https://images.pexels.com/photos/21315872/pexels-photo-21315872/free-photo-of-roofs-of-buildings-in-london.jpeg?auto=compress&cs=tinysrgb&w=600&lazy=load
  https://images.pexels.com/photos/17595582/pexels-photo-17595582/free-photo-of-rooftops-of-houses-in-a-tuscan-village-in-italy.jpeg?auto=compress&cs=tinysrgb&w=600&lazy=load
  https://images.pexels.com/photos/19443291/pexels-photo-19443291/free-photo-of-scenic-rock-formation-and-trees-in-autumn-foliage.jpeg?auto=compress&cs=tinysrgb&w=600&lazy=load
  https://images.pexels.com/photos/17059106/pexels-photo-17059106/free-photo-of-scenic-view-of-mountains-in-winter.jpeg?auto=compress&cs=tinysrgb&w=600&lazy=load
  https://images.pexels.com/photos/18602469/pexels-photo-18602469/free-photo-of-shrubs-of-purple-asters.jpeg?auto=compress&cs=tinysrgb&w=600&lazy=load
  https://images.pexels.com/photos/21315874/pexels-photo-21315874/free-photo-of-skyscrapers.jpeg?auto=compress&cs=tinysrgb&w=600&lazy=load
  https://images.pexels.com/photos/15242076/pexels-photo-15242076/free-photo-of-smiling-brunette-woman-in-white-coat.jpeg?auto=compress&cs=tinysrgb&w=600&lazy=load
  https://images.pexels.com/photos/21316202/pexels-photo-21316202/free-photo-of-the-great-pyramids-of-giza.jpeg?auto=compress&cs=tinysrgb&w=600&lazy=load
  https://images.pexels.com/photos/17322592/pexels-photo-17322592/free-photo-of-trail-among-trees.jpeg?auto=compress&cs=tinysrgb&w=600&lazy=load
  https://images.pexels.com/photos/16154754/pexels-photo-16154754/free-photo-of-trail-in-woods.jpeg?auto=compress&cs=tinysrgb&w=600&lazy=load
  https://images.pexels.com/photos/15993988/pexels-photo-15993988/free-photo-of-trail-with-a-view-of-a-mountain-range.jpeg?auto=compress&cs=tinysrgb&w=600&lazy=load
  https://images.pexels.com/photos/17591475/pexels-photo-17591475/free-photo-of-view-of-an-old-train-passing-through-a-village.jpeg?auto=compress&cs=tinysrgb&w=600&lazy=load
  https://images.pexels.com/photos/21315979/pexels-photo-21315979/free-photo-of-wadi-el-rayan.jpeg?auto=compress&cs=tinysrgb&w=600&lazy=load
  https://images.pexels.com/photos/6031/nature-flowers-flower-butterfly.jpg?auto=compress&cs=tinysrgb&w=600&lazy=load
  https://images.pexels.com/photos/1002335/pexels-photo-1002335.jpeg?auto=compress&cs=tinysrgb&w=600&lazy=load
  https://images.pexels.com/photos/1010269/pexels-photo-1010269.jpeg?auto=compress&cs=tinysrgb&w=600&lazy=load
  https://images.pexels.com/photos/10118749/pexels-photo-10118749.jpeg?auto=compress&cs=tinysrgb&w=600&lazy=load
  https://images.pexels.com/photos/1029031/pexels-photo-1029031.jpeg?auto=compress&cs=tinysrgb&w=600&lazy=load
  https://images.pexels.com/photos/10325702/pexels-photo-10325702.jpeg?auto=compress&cs=tinysrgb&w=600&lazy=load
  https://images.pexels.com/photos/1034010/pexels-photo-1034010.jpeg?auto=compress&cs=tinysrgb&w=600&lazy=load
  https://images.pexels.com/photos/1036189/pexels-photo-1036189.jpeg?auto=compress&cs=tinysrgb&w=600&lazy=load
  https://images.pexels.com/photos/1043058/pexels-photo-1043058.jpeg?auto=compress&cs=tinysrgb&w=600&lazy=load
  https://images.pexels.com/photos/1046447/pexels-photo-1046447.jpeg?auto=compress&cs=tinysrgb&w=600&lazy=load
  https://images.pexels.com/photos/10552025/pexels-photo-10552025.jpeg?auto=compress&cs=tinysrgb&w=600&lazy=load
  https://images.pexels.com/photos/1057116/pexels-photo-1057116.jpeg?auto=compress&cs=tinysrgb&w=600&lazy=load
  https://images.pexels.com/photos/1057182/pexels-photo-1057182.jpeg?auto=compress&cs=tinysrgb&w=600&lazy=load
  https://images.pexels.com/photos/1061559/pexels-photo-1061559.jpeg?auto=compress&cs=tinysrgb&w=600&lazy=load
  https://images.pexels.com/photos/1067353/pexels-photo-1067353.jpeg?auto=compress&cs=tinysrgb&w=600&lazy=load
  https://images.pexels.com/photos/10756778/pexels-photo-10756778.jpeg?auto=compress&cs=tinysrgb&w=600&lazy=load
  https://images.pexels.com/photos/10836584/pexels-photo-10836584.jpeg?auto=compress&cs=tinysrgb&w=600&lazy=load
  https://images.pexels.com/photos/10854354/pexels-photo-10854354.jpeg?auto=compress&cs=tinysrgb&w=600&lazy=load
  https://images.pexels.com/photos/1085754/pexels-photo-1085754.jpeg?auto=compress&cs=tinysrgb&w=600&lazy=load
  https://images.pexels.com/photos/1088774/pexels-photo-1088774.jpeg?auto=compress&cs=tinysrgb&w=600&lazy=load
  https://images.pexels.com/photos/1089321/pexels-photo-1089321.jpeg?auto=compress&cs=tinysrgb&w=600&lazy=load
  https://images.pexels.com/photos/11554584/pexels-photo-11554584.jpeg?auto=compress&cs=tinysrgb&w=600&lazy=load
  https://images.pexels.com/photos/11569050/pexels-photo-11569050.jpeg?auto=compress&cs=tinysrgb&w=600&lazy=load
  https://images.pexels.com/photos/12429220/pexels-photo-12429220.jpeg?auto=compress&cs=tinysrgb&w=600&lazy=load
  https://images.pexels.com/photos/45201/kitty-cat-kitten-pet-45201.jpeg?auto=compress&cs=tinysrgb&w=600
  https://images.pexels.com/photos/104827/cat-pet-animal-domestic-104827.jpeg?auto=compress&cs=tinysrgb&w=600
  https://images.pexels.com/photos/416160/pexels-photo-416160.jpeg?auto=compress&cs=tinysrgb&w=600
  https://www.pexels.com/photo/photo-of-orange-tabby-cat-with-red-handkerchief-1741205/
  https://images.pexels.com/photos/57416/cat-sweet-kitty-animals-57416.jpeg?auto=compress&cs=tinysrgb&w=600
  https://images.pexels.com/photos/1170986/pexels-photo-1170986.jpeg?auto=compress&cs=tinysrgb&w=600
  https://images.pexels.com/photos/1056251/pexels-photo-1056251.jpeg?auto=compress&cs=tinysrgb&w=600
  https://images.pexels.com/photos/20787/pexels-photo.jpg?auto=compress&cs=tinysrgb&w=600
  https://images.pexels.com/photos/2071873/pexels-photo-2071873.jpeg?auto=compress&cs=tinysrgb&w=600
  https://images.pexels.com/photos/1543793/pexels-photo-1543793.jpeg?auto=compress&cs=tinysrgb&w=600
  https://images.pexels.com/photos/208984/pexels-photo-208984.jpeg?auto=compress&cs=tinysrgb&w=600
  https://images.pexels.com/photos/69932/tabby-cat-close-up-portrait-69932.jpeg?auto=compress&cs=tinysrgb&w=600
  https://images.pexels.com/photos/2558605/pexels-photo-2558605.jpeg?auto=compress&cs=tinysrgb&w=600
  https://images.pexels.com/photos/1643457/pexels-photo-1643457.jpeg?auto=compress&cs=tinysrgb&w=600
  https://images.pexels.com/photos/126407/pexels-photo-126407.jpeg?auto=compress&cs=tinysrgb&w=600
  https://images.pexels.com/photos/1314550/pexels-photo-1314550.jpeg?auto=compress&cs=tinysrgb&w=600
  https://images.pexels.com/photos/2071882/pexels-photo-2071882.jpeg?auto=compress&cs=tinysrgb&w=600
  https://images.pexels.com/photos/982865/pexels-photo-982865.jpeg?auto=compress&cs=tinysrgb&w=600
  https://images.pexels.com/photos/821736/pexels-photo-821736.jpeg?auto=compress&cs=tinysrgb&w=600
  https://images.pexels.com/photos/68594/pexels-photo-68594.jpeg?auto=compress&cs=tinysrgb&w=600
  https://images.pexels.com/photos/1521306/pexels-photo-1521306.jpeg?auto=compress&cs=tinysrgb&w=600
  https://images.pexels.com/photos/991831/pexels-photo-991831.jpeg?auto=compress&cs=tinysrgb&w=600
  https://images.pexels.com/photos/1828875/pexels-photo-1828875.jpeg?auto=compress&cs=tinysrgb&w=600
  https://images.pexels.com/photos/804475/pexels-photo-804475.jpeg?auto=compress&cs=tinysrgb&w=600
  https://images.pexels.com/photos/1359307/pexels-photo-1359307.jpeg?auto=compress&cs=tinysrgb&w=600
  https://images.pexels.com/photos/691583/pexels-photo-691583.jpeg?auto=compress&cs=tinysrgb&w=600
  https://images.pexels.com/photos/1003914/pexels-photo-1003914.jpeg?-samerdaboul-1003914.jpg&fm=jpg
  https://images.pexels.com/photos/1009517/pexels-photo-1009517.jpeg?-muhammad-rifki-adiyanto-294769-1009517.jpg&fm=jpg
  https://images.pexels.com/photos/1009831/pexels-photo-1009831.jpeg?-wdnet-1009831.jpg&fm=jpg
  https://images.pexels.com/photos/1018137/pexels-photo-1018137.jpeg?-jessbaileydesign-1018137.jpg&fm=jpg
  https://images.pexels.com/photos/1032814/pexels-photo-1032814.jpeg?-innature-1032814.jpg&fm=jpg
  https://images.pexels.com/photos/103573/pexels-photo-103573.jpeg?-suneo1999-24143-103573.jpg&fm=jpg
  https://images.pexels.com/photos/1037994/pexels-photo-1037994.jpeg?-moose-photos-170195-1037994.jpg&fm=jpg
  https://images.pexels.com/photos/1041103/pexels-photo-1041103.jpeg?-lilartsy-1041103.jpg&fm=jpg
  https://images.pexels.com/photos/1048036/pexels-photo-1048036.jpeg?-scottwebb-1048036.jpg&fm=jpg
  https://images.pexels.com/photos/1054139/pexels-photo-1054139.jpeg?-jerseypics-1054139.jpg&fm=jpg
  https://images.pexels.com/photos/1058836/pexels-photo-1058836.jpeg?-timmossholder-1058836.jpg&fm=jpg
  https://images.pexels.com/photos/105908/pexels-photo-105908.jpeg?-praveen-sadhasivam-17931-105908.jpg&fm=jpg
  https://images.pexels.com/photos/1073567/pexels-photo-1073567.jpeg?-bernard-lee-406459-1073567.jpg&fm=jpg
  https://images.pexels.com/photos/1076588/pexels-photo-1076588.jpeg?-minan1398-1076588.jpg&fm=jpg
  https://images.pexels.com/photos/1084188/pexels-photo-1084188.jpeg?-juanpphotoandvideo-1084188.jpg&fm=jpg
  https://images.pexels.com/photos/1084199/pexels-photo-1084199.jpeg?-faraz-ahmad-412934-1084199.jpg&fm=jpg
  https://images.pexels.com/photos/1103715/pexels-photo-1103715.jpeg?-minan1398-1103715.jpg&fm=jpg
  https://images.pexels.com/photos/1120112/pexels-photo-1120112.jpeg?-alancabello-1120112.jpg&fm=jpg
  https://images.pexels.com/photos/1120601/pexels-photo-1120601.jpeg?-mohammed-ajwad-1120601.jpg&fm=jpg
  https://images.pexels.com/photos/1122628/pexels-photo-1122628.jpeg?-iriser-1122628.jpg&fm=jpg
  https://images.pexels.com/photos/1122634/pexels-photo-1122634.jpeg?-iriser-1122634.jpg&fm=jpg
  https://images.pexels.com/photos/1187078/pexels-photo-1187078.jpeg?-arts-1187078.jpg&fm=jpg
  https://images.pexels.com/photos/1187079/pexels-photo-1187079.jpeg?-arts-1187079.jpg&fm=jpg
  https://images.pexels.com/photos/122734/pexels-photo-122734.jpeg?-the-smell-of-roses-33562-122734.jpg&fm=jpg
  https://images.pexels.com/photos/122737/pexels-photo-122737.jpeg?-the-smell-of-roses-33562-122737.jpg&fm=jpg
  https://images.pexels.com/photos/1233442/pexels-photo-1233442.jpeg?-iriser-1233442.jpg&fm=jpg
  https://images.pexels.com/photos/1235742/pexels-photo-1235742.jpeg?-mattycphoto-1235742.jpg&fm=jpg
  https://images.pexels.com/photos/1242286/pexels-photo-1242286.jpeg?-darrel-und-217939-1242286.jpg&fm=jpg
  https://images.pexels.com/photos/1247584/pexels-photo-1247584.jpeg?-samerdaboul-1247584.jpg&fm=jpg
  https://images.pexels.com/photos/1253122/pexels-photo-1253122.jpeg?-vidalbalielojrfotografia-1253122.jpg&fm=jpg
  https://images.pexels.com/photos/1263986/pexels-photo-1263986.jpeg?-andre-furtado-43594-1263986.jpg&fm=jpg
  https://images.pexels.com/photos/1289399/pexels-photo-1289399.jpeg?-soldiervip-1289399.jpg&fm=jpg
  https://images.pexels.com/photos/129044/pexels-photo-129044.jpeg?-hga010-129044.jpg&fm=jpg
  https://images.pexels.com/photos/1313258/pexels-photo-1313258.jpeg?-brian-van-den-heuvel-339534-1313258.jpg&fm=jpg
  https://images.pexels.com/photos/1322129/pexels-photo-1322129.jpeg?-soldiervip-1322129.jpg&fm=jpg
  https://images.pexels.com/photos/1322185/pexels-photo-1322185.jpeg?-brett-sayles-1322185.jpg&fm=jpg
  https://images.pexels.com/photos/1322444/pexels-photo-1322444.jpeg?-zahaoha-1322444.jpg&fm=jpg
  https://images.pexels.com/photos/1324994/pexels-photo-1324994.jpeg?-hazardos-1324994.jpg&fm=jpg
  https://images.pexels.com/photos/133172/pexels-photo-133172.jpeg?-inspiredimages-133172.jpg&fm=jpg
  https://images.pexels.com/photos/133180/pexels-photo-133180.jpeg?-inspiredimages-133180.jpg&fm=jpg
  https://images.pexels.com/photos/135492/pexels-photo-135492.jpeg?-teckhengwang-135492.jpg&fm=jpg
  https://images.pexels.com/photos/1407325/pexels-photo-1407325.jpeg?-aditya-aiyar-615049-1407325.jpg&fm=jpg
  https://images.pexels.com/photos/1433353/pexels-photo-1433353.jpeg?-fotios-photos-1433353.jpg&fm=jpg
  https://images.pexels.com/photos/1436102/pexels-photo-1436102.jpeg?-sudipta-1436102.jpg&fm=jpg
  https://images.pexels.com/photos/1440476/pexels-photo-1440476.jpeg?-bagus41-1440476.jpg&fm=jpg
  https://images.pexels.com/photos/1469664/pexels-photo-1469664.jpeg?-nathy-1469664.jpg&fm=jpg
  https://images.pexels.com/photos/1488310/pexels-photo-1488310.jpeg?-imagestudio-1488310.jpg&fm=jpg
  https://images.pexels.com/photos/1500523/pexels-photo-1500523.jpeg?-jplenio-1500523.jpg&fm=jpg
  https://images.pexels.com/photos/1522186/pexels-photo-1522186.jpeg?-nubikini-1522186.jpg&fm=jpg
  https://images.pexels.com/photos/15242/flower-roses-bloom-blossom.jpg?-pixabay-15242.jpg&fm=jpg
  https://images.pexels.com/photos/1578105/pexels-photo-1578105.jpeg?-suzyhazelwood-1578105.jpg&fm=jpg
  https://images.pexels.com/photos/158028/bellingrath-gardens-alabama-landscape-scenic-158028.jpeg?-pixabay-158028.jpg&fm=jpg
  https://images.pexels.com/photos/158302/dahlia-flower-plant-nature-158302.jpeg?-pixabay-158302.jpg&fm=jpg
  https://images.pexels.com/photos/158327/butterfly-chess-board-women-s-board-edelfalter-158327.jpeg?-pixabay-158327.jpg&fm=jpg
  https://images.pexels.com/photos/158617/swallow-tail-butterfly-insect-black-158617.jpeg?-pixabay-158617.jpg&fm=jpg
  https://images.pexels.com/photos/1646753/pexels-photo-1646753.jpeg?-unknown6user-1646753.jpg&fm=jpg
  https://images.pexels.com/photos/168417/pexels-photo-168417.jpeg?-lanophotography-168417.jpg&fm=jpg
  https://images.pexels.com/photos/1732419/pexels-photo-1732419.jpeg?-alex-staudinger-829197-1732419.jpg&fm=jpg
  https://images.pexels.com/photos/1765299/pexels-photo-1765299.jpeg?-kim-jinhong-866465-1765299.jpg&fm=jpg
  https://images.pexels.com/photos/1805597/pexels-photo-1805597.jpeg?-zvolskiy-1805597.jpg&fm=jpg
  https://images.pexels.com/photos/1848565/pexels-photo-1848565.jpeg?-luizclas-170497-1848565.jpg&fm=jpg
  https://images.pexels.com/photos/188972/dandelion-inversely-flower-plant-188972.jpeg?-pixabay-188972.jpg&fm=jpg
  https://images.pexels.com/photos/1961778/pexels-photo-1961778.jpeg?-valeriya-1961778.jpg&fm=jpg
  https://images.pexels.com/photos/2014698/pexels-photo-2014698.jpeg?-nietjuh-2014698.jpg&fm=jpg
  https://images.pexels.com/photos/206557/pexels-photo-206557.jpeg?-pixabay-206557.jpg&fm=jpg
  https://images.pexels.com/photos/2067530/pexels-photo-2067530.jpeg?-marta-dzedyshko-1042863-2067530.jpg&fm=jpg
  https://images.pexels.com/photos/207172/pexels-photo-207172.jpeg?-pixabay-207172.jpg&fm=jpg
  https://images.pexels.com/photos/2071779/pexels-photo-2071779.jpeg?-marcelodias-2071779.jpg&fm=jpg
  https://images.pexels.com/photos/2072162/pexels-photo-2072162.jpeg?-george-dolgikh-551816-2072162.jpg&fm=jpg
  https://images.pexels.com/photos/2072170/pexels-photo-2072170.jpeg?-george-dolgikh-551816-2072170.jpg&fm=jpg
  https://images.pexels.com/photos/2076494/pexels-photo-2076494.jpeg?-imjimmyqian-2076494.jpg&fm=jpg
  https://images.pexels.com/photos/2080436/pexels-photo-2080436.jpeg?-adonyi-foto-2080436.jpg&fm=jpg
  https://images.pexels.com/photos/2099737/pexels-photo-2099737.jpeg?-suju-2099737.jpg&fm=jpg
  https://images.pexels.com/photos/221477/pexels-photo-221477.jpeg?-pixabay-221477.jpg&fm=jpg
  https://images.pexels.com/photos/230129/pexels-photo-230129.jpeg?-abbykihano-230129.jpg&fm=jpg
  https://images.pexels.com/photos/234781/pexels-photo-234781.jpeg?-nguyendesigner-234781.jpg&fm=jpg
  https://images.pexels.com/photos/235683/pexels-photo-235683.jpeg?-pixabay-235683.jpg&fm=jpg
  https://images.pexels.com/photos/236259/pexels-photo-236259.jpeg?-pixabay-236259.jpg&fm=jpg
  https://images.pexels.com/photos/237655/pexels-photo-237655.jpeg?-nguyendesigner-237655.jpg&fm=jpg
  https://images.pexels.com/photos/247697/pexels-photo-247697.jpeg?-pixabay-247697.jpg&fm=jpg
  https://images.pexels.com/photos/250591/pexels-photo-250591.jpeg?-jmark-250591.jpg&fm=jpg
  https://images.pexels.com/photos/250716/pexels-photo-250716.jpeg?-jmark-250716.jpg&fm=jpg
  https://images.pexels.com/photos/2507804/pexels-photo-2507804.jpeg?-hazardos-2507804.jpg&fm=jpg
  https://images.pexels.com/photos/2512280/pexels-photo-2512280.jpeg?-evie-shaffer-1259279-2512280.jpg&fm=jpg
  https://images.pexels.com/photos/2512387/pexels-photo-2512387.jpeg?-evie-shaffer-1259279-2512387.jpg&fm=jpg
  https://images.pexels.com/photos/262703/pexels-photo-262703.jpeg?-pixabay-262703.jpg&fm=jpg
  https://images.pexels.com/photos/268261/pexels-photo-268261.jpeg?-pok-rie-33563-268261.jpg&fm=jpg
  https://images.pexels.com/photos/2910597/pexels-photo-2910597.jpeg?-jeswin-2910597.jpg&fm=jpg
  https://images.pexels.com/photos/311458/pexels-photo-311458.jpeg?-scottwebb-311458.jpg&fm=jpg
  https://images.pexels.com/photos/3228769/pexels-photo-3228769.jpeg?-fauxels-3228769.jpg&fm=jpg
  https://images.pexels.com/photos/3230266/pexels-photo-3230266.jpeg?-kristinanor-3230266.jpg&fm=jpg
  https://images.pexels.com/photos/3294254/pexels-photo-3294254.jpeg?-kristinanor-3294254.jpg&fm=jpg
  https://images.pexels.com/photos/33393/caudata-strelitzia-bird-of-paradise-flower-strelitzia-orchids.jpg?-pixabay-33393.jpg&fm=jpg
  https://images.pexels.com/photos/343957/pexels-photo-343957.jpeg?-jmark-343957.jpg&fm=jpg
  https://images.pexels.com/photos/34522/grevillea-flower-australian-native.jpg?-pixabay-34522.jpg&fm=jpg
  https://images.pexels.com/photos/350342/pexels-photo-350342.jpeg?-brigitte-tohm-36757-350342.jpg&fm=jpg
  https://images.pexels.com/photos/355748/pexels-photo-355748.jpeg?-pixabay-355748.jpg&fm=jpg
  https://images.pexels.com/photos/35773/peony-flower-white-summer.jpg?-pixabay-35773.jpg&fm=jpg
  https://images.pexels.com/photos/3579460/pexels-photo-3579460.jpeg?-valeriiamiller-3579460.jpg&fm=jpg
  https://images.pexels.com/photos/35799/summer-still-life-suitcase-in-field-grass-summer.jpg?-jill-wellington-1638660-35799.jpg&fm=jpg
  https://images.pexels.com/photos/35847/summer-still-life-daisies-yellow.jpg?-jill-wellington-1638660-35847.jpg&fm=jpg
  https://images.pexels.com/photos/360972/pexels-photo-360972.jpeg?-mikebirdy-360972.jpg&fm=jpg
  https://images.pexels.com/photos/3621215/pexels-photo-3621215.jpeg?-rethaferguson-3621215.jpg&fm=jpg
  https://images.pexels.com/photos/3621949/pexels-photo-3621949.jpeg?-rethaferguson-3621949.jpg&fm=jpg
  https://images.pexels.com/photos/36420/rose-plant-tender-nature.jpg?-pixabay-36420.jpg&fm=jpg
  https://images.pexels.com/photos/36476/yellow-natural-flower.jpg?-pixabay-36476.jpg&fm=jpg
  https://images.pexels.com/photos/371433/pexels-photo-371433.jpeg?-pixabay-371433.jpg&fm=jpg
  https://images.pexels.com/photos/372166/pexels-photo-372166.jpeg?-pixabay-372166.jpg&fm=jpg
  https://images.pexels.com/photos/3732658/pexels-photo-3732658.jpeg?-shvetsa-3732658.jpg&fm=jpg
  https://images.pexels.com/photos/3732659/pexels-photo-3732659.jpeg?-shvetsa-3732659.jpg&fm=jpg
  https://images.pexels.com/photos/3746214/pexels-photo-3746214.jpeg?-shvetsa-3746214.jpg&fm=jpg
  https://images.pexels.com/photos/3746308/pexels-photo-3746308.jpeg?-shvetsa-3746308.jpg&fm=jpg
  https://images.pexels.com/photos/381739/pexels-photo-381739.jpeg?-sevenstormphotography-381739.jpg&fm=jpg
  https://images.pexels.com/photos/39669/dandelion-sky-flower-nature-39669.jpeg?-pixabay-39669.jpg&fm=jpg
  https://images.pexels.com/photos/403768/pexels-photo-403768.jpeg?-pixabay-403768.jpg&fm=jpg
  https://images.pexels.com/photos/4066850/pexels-photo-4066850.jpeg?-nsu-mon-1803488-4066850.jpg&fm=jpg
  https://images.pexels.com/photos/409696/pexels-photo-409696.jpeg?-karoldach-409696.jpg&fm=jpg
  https://images.pexels.com/photos/409800/pexels-photo-409800.jpeg?-sevenstormphotography-409800.jpg&fm=jpg
  https://images.pexels.com/photos/413707/pexels-photo-413707.jpeg?-jill-wellington-1638660-413707.jpg&fm=jpg
  https://images.pexels.com/photos/414083/pexels-photo-414083.jpeg?-pixabay-414083.jpg&fm=jpg
  https://images.pexels.com/photos/4612227/pexels-photo-4612227.jpeg?-shkrabaanthony-4612227.jpg&fm=jpg
  https://images.pexels.com/photos/46231/water-lilies-pink-water-lake-46231.jpeg?-pixabay-46231.jpg&fm=jpg
  https://images.pexels.com/photos/532566/pexels-photo-532566.jpeg?-scottwebb-532566.jpg&fm=jpg
  https://images.pexels.com/photos/53397/rose-orange-red-flower-53397.jpeg?-pixabay-53397.jpg&fm=jpg
  https://images.pexels.com/photos/53475/flower-blossom-bloom-blue-53475.jpeg?-pixabay-53475.jpg&fm=jpg
  https://images.pexels.com/photos/542517/pexels-photo-542517.jpeg?-billelmoula-542517.jpg&fm=jpg
  https://images.pexels.com/photos/54267/sunflower-blossom-bloom-flowers-54267.jpeg?-pixabay-54267.jpg&fm=jpg
  https://images.pexels.com/photos/54319/cranesbill-blossom-bloom-blue-54319.jpeg?-pixabay-54319.jpg&fm=jpg
  https://images.pexels.com/photos/56856/hibiscus-blossom-bloom-flower-56856.jpeg?-pixabay-56856.jpg&fm=jpg
  https://images.pexels.com/photos/569471/pexels-photo-569471.jpeg?-lokesh-vanapalli-176270-569471.jpg&fm=jpg
  https://images.pexels.com/photos/569880/pexels-photo-569880.jpeg?-neosiam-569880.jpg&fm=jpg
  https://images.pexels.com/photos/57401/flowers-nature-macro-petals-57401.jpeg?-pixabay-57401.jpg&fm=jpg
  https://images.pexels.com/photos/57463/flower-blossom-bloom-colorful-57463.jpeg?-pixabay-57463.jpg&fm=jpg
  https://images.pexels.com/photos/576488/pexels-photo-576488.jpeg?-karanedavalli-576488.jpg&fm=jpg
  https://images.pexels.com/photos/579902/pexels-photo-579902.jpeg?-neosiam-579902.jpg&fm=jpg
  https://images.pexels.com/photos/581222/pexels-photo-581222.jpeg?-fu-zhichao-176355-581222.jpg&fm=jpg
  https://images.pexels.com/photos/583850/pexels-photo-583850.jpeg?-thepaintedsquare-583850.jpg&fm=jpg
  https://images.pexels.com/photos/590042/pexels-photo-590042.jpeg?-neosiam-590042.jpg&fm=jpg
  https://images.pexels.com/photos/59984/daisies-white-flower-face-59984.jpeg?-pixabay-59984.jpg&fm=jpg
  https://images.pexels.com/photos/60628/flower-garden-blue-sky-hokkaido-japan-60628.jpeg?-pixabay-60628.jpg&fm=jpg
  https://images.pexels.com/photos/60702/blossom-bloom-flower-wild-flower-60702.jpeg?-pixabay-60702.jpg&fm=jpg
  https://images.pexels.com/photos/62279/pexels-photo-62279.jpeg?-megapixelstock-62279.jpg&fm=jpg
  https://images.pexels.com/photos/627979/pexels-photo-627979.jpeg?-goumbik-627979.jpg&fm=jpg
  https://images.pexels.com/photos/635280/pexels-photo-635280.jpeg?-daksh-bansal-181635-635280.jpg&fm=jpg
  https://images.pexels.com/photos/635284/pexels-photo-635284.jpeg?-bella-white-201200-635284.jpg&fm=jpg
  https://images.pexels.com/photos/641552/pexels-photo-641552.jpeg?-hieu-641552.jpg&fm=jpg
  https://images.pexels.com/photos/641561/pexels-photo-641561.jpeg?-hieu-641561.jpg&fm=jpg
  https://images.pexels.com/photos/66896/tulips-flowers-fish-eye-red-66896.jpeg?-pixabay-66896.jpg&fm=jpg
  https://images.pexels.com/photos/673857/pexels-photo-673857.jpeg?-iriser-673857.jpg&fm=jpg
  https://images.pexels.com/photos/674475/pexels-photo-674475.jpeg?-ifangfang-674475.jpg&fm=jpg
  https://images.pexels.com/photos/675313/pexels-photo-675313.jpeg?-cindyg-675313.jpg&fm=jpg
  https://images.pexels.com/photos/68507/spring-flowers-flowers-collage-floral-68507.jpeg?-pixabay-68507.jpg&fm=jpg
  https://images.pexels.com/photos/68570/roses-bouquet-congratulations-arrangement-68570.jpeg?-pixabay-68570.jpg&fm=jpg
  https://images.pexels.com/photos/695688/pexels-photo-695688.jpeg?-itemguides-com-205811-695688.jpg&fm=jpg
  https://images.pexels.com/photos/697256/pexels-photo-697256.jpeg?-hieu-697256.jpg&fm=jpg
  https://images.pexels.com/photos/69776/tulips-bed-colorful-color-69776.jpeg?-pixabay-69776.jpg&fm=jpg
  https://images.pexels.com/photos/701758/pexels-photo-701758.jpeg?-kpaukshtite-701758.jpg&fm=jpg
  https://images.pexels.com/photos/70851/roses-flower-nature-garden-70851.jpeg?-pixabay-70851.jpg&fm=jpg
  https://images.pexels.com/photos/709685/pexels-photo-709685.jpeg?-iriser-709685.jpg&fm=jpg
  https://images.pexels.com/photos/736220/pexels-photo-736220.jpeg?-jonaskakaroto-736220.jpg&fm=jpg
  https://images.pexels.com/photos/748641/pexels-photo-748641.jpeg?-jessbaileydesign-748641.jpg&fm=jpg
  https://images.pexels.com/photos/759324/pexels-photo-759324.jpeg?-iriser-759324.jpg&fm=jpg
  https://images.pexels.com/photos/765063/pexels-photo-765063.jpeg?-yigithan02-765063.jpg&fm=jpg
  https://images.pexels.com/photos/775779/pexels-photo-775779.jpeg?-imama-lavi-254860-775779.jpg&fm=jpg
  https://images.pexels.com/photos/776652/pexels-photo-776652.jpeg?-nietjuh-776652.jpg&fm=jpg
  https://images.pexels.com/photos/788193/pexels-photo-788193.jpeg?-rifkyilhamrd-788193.jpg&fm=jpg
  https://images.pexels.com/photos/828544/pexels-photo-828544.jpeg?-ginny9119-828544.jpg&fm=jpg
  https://images.pexels.com/photos/835774/pexels-photo-835774.jpeg?-jessbaileydesign-835774.jpg&fm=jpg
  https://images.pexels.com/photos/837259/pexels-photo-837259.jpeg?-element5-837259.jpg&fm=jpg
  https://images.pexels.com/photos/894750/pexels-photo-894750.jpeg?-punchbrandstock-894750.jpg&fm=jpg
  https://images.pexels.com/photos/894751/pexels-photo-894751.jpeg?-punchbrandstock-894751.jpg&fm=jpg
  https://images.pexels.com/photos/894752/pexels-photo-894752.jpeg?-punchbrandstock-894752.jpg&fm=jpg
  https://images.pexels.com/photos/894753/pexels-photo-894753.jpeg?-punchbrandstock-894753.jpg&fm=jpg
  https://images.pexels.com/photos/913418/pexels-photo-913418.jpeg?-minan1398-913418.jpg&fm=jpg
  https://images.pexels.com/photos/916340/pexels-photo-916340.jpeg?-iriser-916340.jpg&fm=jpg
  https://images.pexels.com/photos/919278/pexels-photo-919278.jpeg?-myersmc16-919278.jpg&fm=jpg
  https://images.pexels.com/photos/931151/pexels-photo-931151.jpeg?-secret-garden-333350-931151.jpg&fm=jpg
  https://images.pexels.com/photos/931162/pexels-photo-931162.jpeg?-secret-garden-333350-931162.jpg&fm=jpg
  https://images.pexels.com/photos/931166/pexels-photo-931166.jpeg?-secret-garden-333350-931166.jpg&fm=jpg
  https://images.pexels.com/photos/931180/pexels-photo-931180.jpeg?-secret-garden-333350-931180.jpg&fm=jpg
  https://images.pexels.com/photos/945453/pexels-photo-945453.jpeg?-thngocbich-945453.jpg&fm=jpg
  https://images.pexels.com/photos/946290/pexels-photo-946290.jpeg?-d123x-946290.jpg&fm=jpg
  https://images.pexels.com/photos/947914/pexels-photo-947914.jpeg?-olly-947914.jpg&fm=jpg
  https://images.pexels.com/photos/953057/pexels-photo-953057.jpeg?-alena-koval-233944-953057.jpg&fm=jpg
  https://images.pexels.com/photos/953241/pexels-photo-953241.jpeg?-8moments-953241.jpg&fm=jpg
  https://images.pexels.com/photos/954045/pexels-photo-954045.jpeg?-hieu-954045.jpg&fm=jpg
  https://images.pexels.com/photos/961402/pexels-photo-961402.jpeg?-alena-koval-233944-961402.jpg&fm=jpg
  https://images.pexels.com/photos/96920/pexels-photo-96920.jpeg?-stefanstefancik-96920.jpg&fm=jpg
  https://images.pexels.com/photos/974870/pexels-photo-974870.jpeg?-iriser-974870.jpg&fm=jpg
  https://images.pexels.com/photos/975545/pexels-photo-975545.jpeg?-gru-120834-975545.jpg&fm=jpg
  https://images.pexels.com/photos/992829/pexels-photo-992829.jpeg?-amaya-368841-992829.jpg&fm=jpg
  https://images.pexels.com/photos/993626/pexels-photo-993626.jpeg?-muffinsaurs-993626.jpg&fm=jpg
]

@random_476_words = %w[people	history	way	art	world	information	map	two	family	government	health	system	computer	meat	year	thanks	music	person	reading	method	data	food	understanding	theory	law	bird	literature	problem	software	control	knowledge	power	ability	economics	love	internet	television	science	library	nature	fact	product	idea	temperature	investment	area	society	activity	story	industry	media	thing	oven	community	definition	safety	quality	development	language	management	player	variety	video	week	security	country	exam	movie	organization	equipment	physics	analysis	policy	series	thought	basis	boyfriend	direction	strategy	technology	army	camera	freedom	paper	environment	child	instance	month	truth	marketing	university	writing	article	department	difference	goal	news	audience	fishing	growth	income	marriage	user	combination	failure	meaning	medicine	philosophy	teacher	communication	night	chemistry	disease	disk	energy	nation	road	role	soup	advertising	location	success	addition	apartment	education	math	moment	painting	politics	attention	decision	event	property	shopping	student	wood	competition	distribution	entertainment	office	population	president	unit	category	cigarette	context	introduction	opportunity	performance	driver	flight	length	magazine	newspaper	relationship	teaching	cell	dealer	finding	lake	member	message	phone	scene	appearance	association	concept	customer	death	discussion	housing	inflation	insurance	mood	woman	advice	blood	effort	expression	importance	opinion	payment	reality	responsibility	situation	skill	statement	wealth	application	city	county	depth	estate	foundation	grandmother	heart	perspective	photo	recipe	studio	topic	collection	depression	imagination	passion	percentage	resource	setting	ad	agency	college	connection	criticism	debt	description	memory	patience	secretary	solution	administration	aspect	attitude	director	personality	psychology	recommendation	response	selection	storage	version	alcohol	argument	complaint	contract	emphasis	highway	loss	membership	possession	preparation	steak	union	agreement	cancer	currency	employment	engineering	entry	interaction	mixture	preference	region	republic	tradition	virus	actor	classroom	delivery	device	difficulty	drama	election	engine	football	guidance	hotel	owner	priority	protection	suggestion	tension	variation	anxiety	atmosphere	awareness	bath	bread	candidate	climate	comparison	confusion	construction	elevator	emotion	employee	employer	guest	height	leadership	mall	manager	operation	recording	sample	transportation	charity	cousin	disaster	editor	efficiency	excitement	extent	feedback	guitar	homework	leader	mom	outcome	permission	presentation	promotion	reflection	refrigerator	resolution	revenue	session	singer	tennis	basket	bonus	cabinet	childhood	church	clothes	coffee	dinner	drawing	hair	hearing	initiative	judgment	lab	measurement	mode	mud	orange	poetry	police	possibility	procedure	queen	ratio	relation	restaurant	satisfaction	sector	signature	significance	song	tooth	town	vehicle	volume	wife	accident	airport	appointment	arrival	assumption	baseball	chapter	committee	conversation	database	enthusiasm	error	explanation	farmer	gate	girl	hall	historian	hospital	injury	instruction	maintenance	manufacturer	meal	perception	pie	poem	presence	proposal	reception	replacement	revolution	river	son	speech	tea	village	warning	winner	worker	writer	assistance	breath	buyer	chest	chocolate	conclusion	contribution	cookie	courage	dad	desk	drawer	establishment	examination	garbage	grocery	honey	impression	improvement	independence	insect	inspection	inspector	king	ladder	menu	penalty	piano	potato	profession	professor	quantity	reaction	requirement	salad	sister	supermarket	tongue	weakness	wedding	affair	ambition	analyst	apple	assignment	assistant	bathroom	bedroom	beer	birthday	celebration	championship	cheek	client	consequence	departure	diamond	dirt	ear	fortune	friendship	funeral	gene	girlfriend	hat	indication	intention	lady	midnight	negotiation	obligation	passenger	pizza	platform	poet	pollution	recognition	reputation	shirt	sir	speaker]

def random_words(number, resource_name)
  start = rand(476 - number)
  words_group = @random_476_words.slice(start, number).join(" ")
  "Random #{resource_name}: #{words_group}"
end

def random_img_url
  @img_urls[rand(@img_urls.size)]
end

def generate_7_boards(user)
  7.times do
    user.boards.create(
      cover_url: random_img_url,
      name: random_words(4, "board"),
      description: random_words(10, "description")
    )
  end
end

def generate_20_pins(user)
  20.times do
    user.pins.create(
      image_url: random_img_url,
      title: random_words(4, "title"),
      description: random_words(10, "description")
    )
  end
end

def generate_avatar(user)
  user.profile.update(
    avatar_url: random_img_url
  )
end

def generate_comment_for_user_pins(user)
  User.all.each do |commenter|
    user.pins.each do |pin|
      commenter.comments.create(
        pin: pin,
        body: random_words(4, "comment")
      )
    end
  end
end

def generate_like_for_user_pins(user)
  User.all.each do |liker|
    user.pins.each do |pin|
      liker.likes.create(
        pin: pin
      )
    end
  end
end

def generate_follow_for_user(user)
  User.all.each do |follower|
    Follow.create(follower: follower, followee: user) unless follower == user
  end
end

(0..9).each do |i|
  user = User.find_or_initialize_by(email: "demo#{i}@example.com")
  unless user.persisted?
    user.password = "demo#{i}@example"
    user.password_confirmation = "demo#{i}@example"
    user.save!
  end
  generate_7_boards(user)
  generate_20_pins(user)
  generate_avatar(user)
  generate_comment_for_user_pins(user)
  generate_follow_for_user(user)
end
