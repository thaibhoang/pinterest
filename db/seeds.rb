# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end


@img_urls= %w[
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
]

@random_476_words = %w[people	history	way	art	world	information	map	two	family	government	health	system	computer	meat	year	thanks	music	person	reading	method	data	food	understanding	theory	law	bird	literature	problem	software	control	knowledge	power	ability	economics	love	internet	television	science	library	nature	fact	product	idea	temperature	investment	area	society	activity	story	industry	media	thing	oven	community	definition	safety	quality	development	language	management	player	variety	video	week	security	country	exam	movie	organization	equipment	physics	analysis	policy	series	thought	basis	boyfriend	direction	strategy	technology	army	camera	freedom	paper	environment	child	instance	month	truth	marketing	university	writing	article	department	difference	goal	news	audience	fishing	growth	income	marriage	user	combination	failure	meaning	medicine	philosophy	teacher	communication	night	chemistry	disease	disk	energy	nation	road	role	soup	advertising	location	success	addition	apartment	education	math	moment	painting	politics	attention	decision	event	property	shopping	student	wood	competition	distribution	entertainment	office	population	president	unit	category	cigarette	context	introduction	opportunity	performance	driver	flight	length	magazine	newspaper	relationship	teaching	cell	dealer	finding	lake	member	message	phone	scene	appearance	association	concept	customer	death	discussion	housing	inflation	insurance	mood	woman	advice	blood	effort	expression	importance	opinion	payment	reality	responsibility	situation	skill	statement	wealth	application	city	county	depth	estate	foundation	grandmother	heart	perspective	photo	recipe	studio	topic	collection	depression	imagination	passion	percentage	resource	setting	ad	agency	college	connection	criticism	debt	description	memory	patience	secretary	solution	administration	aspect	attitude	director	personality	psychology	recommendation	response	selection	storage	version	alcohol	argument	complaint	contract	emphasis	highway	loss	membership	possession	preparation	steak	union	agreement	cancer	currency	employment	engineering	entry	interaction	mixture	preference	region	republic	tradition	virus	actor	classroom	delivery	device	difficulty	drama	election	engine	football	guidance	hotel	owner	priority	protection	suggestion	tension	variation	anxiety	atmosphere	awareness	bath	bread	candidate	climate	comparison	confusion	construction	elevator	emotion	employee	employer	guest	height	leadership	mall	manager	operation	recording	sample	transportation	charity	cousin	disaster	editor	efficiency	excitement	extent	feedback	guitar	homework	leader	mom	outcome	permission	presentation	promotion	reflection	refrigerator	resolution	revenue	session	singer	tennis	basket	bonus	cabinet	childhood	church	clothes	coffee	dinner	drawing	hair	hearing	initiative	judgment	lab	measurement	mode	mud	orange	poetry	police	possibility	procedure	queen	ratio	relation	restaurant	satisfaction	sector	signature	significance	song	tooth	town	vehicle	volume	wife	accident	airport	appointment	arrival	assumption	baseball	chapter	committee	conversation	database	enthusiasm	error	explanation	farmer	gate	girl	hall	historian	hospital	injury	instruction	maintenance	manufacturer	meal	perception	pie	poem	presence	proposal	reception	replacement	revolution	river	son	speech	tea	village	warning	winner	worker	writer	assistance	breath	buyer	chest	chocolate	conclusion	contribution	cookie	courage	dad	desk	drawer	establishment	examination	garbage	grocery	honey	impression	improvement	independence	insect	inspection	inspector	king	ladder	menu	penalty	piano	potato	profession	professor	quantity	reaction	requirement	salad	sister	supermarket	tongue	weakness	wedding	affair	ambition	analyst	apple	assignment	assistant	bathroom	bedroom	beer	birthday	celebration	championship	cheek	client	consequence	departure	diamond	dirt	ear	fortune	friendship	funeral	gene	girlfriend	hat	indication	intention	lady	midnight	negotiation	obligation	passenger	pizza	platform	poet	pollution	recognition	reputation	shirt	sir	speaker]

def random_words(number)
  start = rand(476-number)
  words_group = @random_476_words.slice(start, number).join(" ")
  return "Random words: " + words_group
end

def random_img_url
  @img_urls[rand(@img_urls.size)]
end

def generate_5_boards(user)
  5.times do 
    user.boards.create(
      name: random_words(4),
      description: random_words(10))
  end
end

def generate_15_pins(user)
  15.times do
    user.pins.create(
      image_url: random_img_url,
      title: random_words(4),
      description: random_words(10)
    )
  end
end

(0..9).each do |i|
  user = User.find_or_initialize_by(email: "demo#{i}@example.com")
  unless user.persisted?
    user.password = "demo#{i}@example"
    user.password_confirmation = "demo#{i}@example"
    user.save!
  end
  generate_5_boards(user)
  generate_15_pins(user)
end