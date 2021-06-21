
User.destroy_all
List.destroy_all
Trail.destroy_all
Photo.destroy_all
Review.destroy_all
TrailList.destroy_all

# User.reset_pk_sequence 
# List.reset_pk_sequence 
# Trail.reset_pk_sequence 
# Photo.reset_pk_sequence 
# Review.reset_pk_sequence 
# TrailList.reset_pk_sequence 

ActiveRecord::Base.connection.tables.each do |t|
    ActiveRecord::Base.connection.reset_pk_sequence!(t)
end

#user
User.create(name: "Erin Sellers", username: "esellers", email: "erinsellers@gmail.com", password: "123", location: "Brooklyn, NY", profile_picture: "https://i.imgur.com/CtV4uZq.jpeg", bio: "Mostly in it for the post-hike beer.")
User.create(name: "Elena Ridker", username: "ridz", email: "erid@gmail.com", password: "123", location: "Hartland, VT", profile_picture: "https://i.imgur.com/jeN6tRX.jpg", bio: "Part-time hiker trying to go full-time.")
User.create(name: "Andrew Ridker", username: "tolstoyBoi", email: "arid@gmail.com", password: "123", location: "Brooklyn, NY", profile_picture: "https://www.rcwlitagency.com/media/5756/andrew-ridker-c-george-baier-iv-3.jpg", bio: "Nature lover trapped in NYC.")
User.create(name: "Celia O'Flaherty", username: "obakerty", email: "baker@gmail.com", password: "123", location: "Burlington, VT", profile_picture: "https://kingdomabh.org/wp-content/uploads/2019/02/Celia-OFlaherty.jpg", bio: "If you don't bring peanut butter on a hike we can't be friends.")

puts "seeded users"

#lists 
List.create(user_id: User.first.id, title: "Favorited Hikes", public: true)
List.create(user_id: User.second.id, title: "Favorited Hikes", public: true)
List.create(user_id: User.third.id, title: "Favorited Hikes", public: true)
List.create(user_id: User.fourth.id, title: "Favorited Hikes", public: true)

puts "seeded lists"


#NH Trails 
Trail.create(name: "Lonesome Lake Trail", location: "Lincoln, NH", state: "NH", difficulty: "moderate", length: 3.1, elevation_gain: 1026, route_type: "Loop", latitude: 44.14036999450745, longitude: -71.69918230970421)
Trail.create(name: "Mount Moosilauke - Gorge Brook Trail", location: "North Woodstock, NH", state: "NH", difficulty: "hard", length: 7.1, elevation_gain: 2513, route_type: "Out and back", latitude: 44.04052013652603, longitude: -71.79289528901403)
Trail.create(name: "Flume Gorge Trail", location: "Lincoln, NH", state: "NH", difficulty: "easy", length: 2.2, elevation_gain: 488, route_type: "Loop", latitude: 44.09842487633608, longitude: -71.67935276214901)
Trail.create(name: "Mount Willard Trail", location: "Carroll, NH", state: "NH", difficulty: "moderate", length: 2.7, elevation_gain: 895, route_type: "Out and back", latitude: 44.218592, longitude: -71.410871)
Trail.create(name: "Mount Cardigan - West Ridge Trail", location: "Orange, NH", state: "NH", difficulty: "moderate", length: 3.1, elevation_gain: 1194, route_type: "Out and back", latitude: 43.64724427911405, longitude: -71.93611998080722)
Trail.create(name: "Gile Mountain Trail", location: "Norwich, NH", state: "NH", difficulty: "easy", length: 1.4, elevation_gain: 393, route_type: "Out and back", latitude: 43.79015327708058, longitude: -72.34286251534498)
Trail.create(name: "Mount Major - Main Trail Loop", location: "Alton Bay, NH", state: "NH", difficulty: "moderate", length: 3.7, elevation_gain: 1148, route_type: "Loop", latitude: 43.51990377592226, longitude: -71.27284816504974)
Trail.create(name: "Mount Tecumseh Trail", location: "Waterville Valley, NH", state: "NH", difficulty: "hard", length: 5.2, elevation_gain: 2283, route_type: "Out and back", latitude: 44.095686537220566, longitude: -71.52235185150232)
Trail.create(name: "Mount Kearsarge North", location: "Intervale, NH", state: "NH", difficulty: "hard", length: 6.4, elevation_gain: 2588, route_type: "Out and back", latitude: 44.2274182555471, longitude: -71.1335583246487)

#VT Trails 
Trail.create(name: "Camel's Hump - Monroe Trail", location: "Waterbury, VT", state: "VT", difficulty: "hard", length: 6.0, elevation_gain: 2588, route_type: "Out and back", latitude: 44.31657415317369, longitude: -72.84954291534498)
Trail.create(name: "Mount Mansfield - Sunset Ridge Trail", location: "Underhill, VT", state: "VT", difficulty: "hard", length: 5.9, elevation_gain: 2687, route_type: "Loop", latitude: 44.52928044936188, longitude: -72.84307628653508)
Trail.create(name: "Killington Peak - Bucklin Trail", location: "Mendon, VT", state: "VT", difficulty: "hard", length: 7.2, elevation_gain: 2470, route_type: "Out and back", latitude: 43.61774797850811, longitude: -72.88602049344486)
Trail.create(name: "Sterling Pond Trail", location: "Jeffersonville, VT", state: "VT", difficulty: "moderate", length: 2.3, elevation_gain: 908, route_type: "Out and back", latitude: 44.557204510377034, longitude: -72.79316316241061)
Trail.create(name: "Mount Ascutney - Windsor Trail", location: "Windsor, VT", state: "VT", difficulty: "moderate", length: 5.3, elevation_gain: 2500, route_type: "Out and back", latitude: 43.4235554478492, longitude: -72.40315770191614)
Trail.create(name: "Mount Tom Trail", location: "Woodstock, VT", state: "VT", difficulty: "easy", length: 4.2, elevation_gain: 643, route_type: "Out and back", latitude: 43.62472310405783, longitude: -72.5268504696483)
Trail.create(name: "Mount Hunger - Waterbury Trail", location: "Waterbury Center, VT", state: "VT", difficulty: "hard", length: 3.7, elevation_gain: 2263, route_type: "Out and back", latitude: 44.406012358520826, longitude: -72.67595400435266)
Trail.create(name: "Mount Pisgah", location: "Oreleans, VT", state: "VT", difficulty: "moderate", length: 4.1, elevation_gain: 1653, route_type: "Out and back", latitude: 44.863154264420054, longitude: -72.03239627146314)
Trail.create(name: "Haystack Mountain Trail", location: "Wilmington, VT", state: "VT", difficulty: "moderate", length: 5.0, elevation_gain: 1010, route_type: "Out and back", latitude: 42.8996447, longitude: -72.91079)
Trail.create(name: "Lye Brook Falls Trail", location: "Manchester Center, VT", state: "VT", difficulty: "moderate", length: 4.4, elevation_gain: 918, route_type: "Out and back", latitude: 43.931637, longitude: -73.224218)
Trail.create(name: "The Ridker Trail", location: "Hartland, VT", state: "VT", difficulty: "easy", length: 1.3, elevation_gain: 400, route_type: "Loop", latitude: 43.57898682980803, longitude: -72.3945561884198)

#ME Trails
Trail.create(name: "Beehive Loop Trail", location: "Bar Harbor, ME", state: "ME", difficulty: "hard", length: 1.5, elevation_gain: 508, route_type: "Loop", latitude: 44.33173252806464, longitude: -68.18532430127135)
Trail.create(name: "Jordan Pond Loop Trail", location: "Mount Desert, ME", state: "ME", difficulty: "moderate", length: 3.4, elevation_gain: 95, route_type: "Loop", latitude: 44.3235992933219, longitude: -68.25372948137887)
Trail.create(name: "Gorham Mountain", location: "Bar Harbor, ME", state: "ME", difficulty: "moderate", length: 1.6, elevation_gain: 429, route_type: "Out and back", latitude: 44.31670980658919, longitude: -68.19171001563613)
Trail.create(name: "Rumford Whitecap Trail", location: "Rumford, ME", state: "ME", difficulty: "moderate", length: 5.8, elevation_gain: 1689, route_type: "Out and back", latitude: 44.55096286894254, longitude: -70.6765160217059)
Trail.create(name: "Cadillac Mountain - South Ridge Trail", location: "Mount Desert, ME", state: "ME", difficulty: "moderate", length: 8.0, elevation_gain: 2286, route_type: "Loop", latitude: 44.31342753921267, longitude: -68.21502883068996)
Trail.create(name: "Cadillac Summit - Loop Trail", location: "Mount Desert, ME", state: "ME", difficulty: "easy", length: 0.4, elevation_gain: 52, route_type: "Loop", latitude: 44.35241584342626, longitude: -68.22397715955836)
Trail.create(name: "Penobscot Mountain Trail", location: "Mount Desert, ME", state: "ME", difficulty: "moderate", length: 2.9, elevation_gain: 974, route_type: "Out and back", latitude: 44.32301091755742, longitude: -68.25354229011165)
Trail.create(name: "Tumbledown Brook Trail", location: "Weld, ME", state: "ME", difficulty: "moderate", length: 4.7, elevation_gain: 1840, route_type: "Out and back", latitude: 44.729878053981125, longitude: -70.53239059037965)
Trail.create(name: "Old Speck Mountain Trail", location: "Grafton Notch State Park", state: "ME", difficulty: "hard", length: 7.4, elevation_gain: 2870, route_type: "Out and back", latitude: 44.5896114, longitude: -70.9475613)

#NY Trails
Trail.create(name: "Bear Mountain Loop Trail", location: "Bear Mountain, NY", state: "NY", difficulty: "moderate", length: 3.8, elevation_gain: 1154, route_type: "Out and back", latitude: 41.313540996721365, longitude: -73.98877834171425)
Trail.create(name: "Indian Head and Rainbow Falls", location: "Keene, NY", state: "NY", difficulty: "moderate", length: 10.8, elevation_gain: 1978, route_type: "Loop", latitude: 44.15040117229893, longitude: -73.76776738325552)
Trail.create(name: "Reeves Brook Loop Trail", location: "Sloatsburgh, NY", state: "NY", difficulty: "moderate", length: 3.8, elevation_gain: 872, route_type: "Loop", latitude: 41.17437271384687, longitude: -74.16840115965978)
Trail.create(name: "Overlook Mountain Trail", location: "Woodstock, NY", state: "NY", difficulty: "moderate", length: 4.6, elevation_gain: 1397, route_type: "Out and back", latitude: 42.071318826297016, longitude: -74.12259933106299)
Trail.create(name: "Breakneck Ridge", location: "Cornwall-on-Hudson, NY", state: "NY", difficulty: "hard", length: 3.2, elevation_gain: 1250, route_type: "Loop", latitude: 41.44322, longitude: -73.97795)
Trail.create(name: "Giant Ledge Trail", location: "Big Indian, NY", state: "NY", difficulty: "moderate", length: 7.1, elevation_gain: 2053, route_type: "Out and back", latitude: 42.03316313596693, longitude: -74.4064988083823)
Trail.create(name: "Gertrude's Nose Trail", location: "High Falls, NY", state: "NY", difficulty: "moderate", length: 6.9, elevation_gain: 1135, route_type: "Loop", latitude: 41.73057144872334, longitude: -74.23441812883625)
Trail.create(name: "Stump Pond Loop Trail", location: "Smithtown, NY", state: "NY", difficulty: "easy", length: 6.1, elevation_gain: 187, route_type: "Loop", latitude: 40.824707, longitude: -73.221348)
Trail.create(name: "Cascade Mountain Trail", location: "Keene, NY", state: "NY", difficulty: "hard", length: 5.6, elevation_gain: 2286, route_type: "Out and back", latitude: 44.21968234813167, longitude: -73.88753151918087)

puts "seeded trails"

#Reviews 
Review.create(comment: "Definition of a greate hike - rocky in some places. A little bit of scrambling towards the summit. Amazing views at the top.", difficulty: "moderate", rating: 5, date: "Oct 2 2020", trail_id: Trail.first.id, user_id: User.first.id)
Review.create(comment: "Brutal, killer on the knees! Very pretty but not a hike I could manage very often", difficulty: "hard", rating: 3, date: "Sept 22 2020", trail_id: Trail.first.id, user_id: User.last.id)

puts "seeded reviews"

#photos 
Photo.create(date: "Oct 2 2020", user_id: User.all.sample.id, trail_id: Trail.find_by(name: "Camel's Hump - Monroe Trail").id, title: "Top of the hump", img_link:"https://i.imgur.com/628lsip.jpeg")
Photo.create(date: "Oct 2 2020", user_id: User.all.sample.id, trail_id: Trail.find_by(name: "Camel's Hump - Monroe Trail").id, title: "Awesome views", img_link:"https://i.imgur.com/U18vQeA.jpeg")
Photo.create(date: "August 10 2020", user_id: User.all.sample.id, trail_id: Trail.find_by(name: "Camel's Hump - Monroe Trail").id, title: "Awesome views", img_link:"https://i.imgur.com/0erH8WL.jpeg")
Photo.create(date: "August 10 2020", user_id: User.all.sample.id, trail_id: Trail.find_by(name: "Camel's Hump - Monroe Trail").id, title: "Awesome views", img_link:"https://i.imgur.com/rSWa2pu.jpeg")

Photo.create(date: "Apr 12 2021", user_id: User.all.sample.id, trail_id: Trail.find_by(name: "Mount Mansfield - Sunset Ridge Trail").id, title: "Sunset views", img_link:"https://i.redd.it/1tf7ooofegt51.jpg")
Photo.create(date: "Nov 23 2020", user_id: User.all.sample.id, trail_id: Trail.find_by(name: "Mount Mansfield - Sunset Ridge Trail").id, title: "Great hike", img_link:"https://2.bp.blogspot.com/-S5WC75adnDw/V_xHhktJ7HI/AAAAAAAAWcw/FCrZbwYm-hImNFUxFPzWegYzRd3-OY5ngCLcB/s640/vermont16.jpg")
Photo.create(date: "Apr 12 2021", user_id: User.all.sample.id, trail_id: Trail.find_by(name: "Mount Mansfield - Sunset Ridge Trail").id, title: "Sunset views", img_link:"https://cdn-assets.alltrails.com/uploads/photo/image/23913750/large_5f0eeb794135f9afc93bddc88b368dbe.jpg")

Photo.create(date: "July 13 2020", user_id: User.all.sample.id, trail_id: Trail.find_by(name: "Killington Peak - Bucklin Trail").id, title: "Worth the hike!", img_link:"http://4.bp.blogspot.com/-n5EYjBhcCNc/VVkU0dKQDiI/AAAAAAAAPI4/NzDSJNyF5eg/s1600/DSCF7626.JPG")
Photo.create(date: "July 13 2020", user_id: User.all.sample.id, trail_id: Trail.find_by(name: "Killington Peak - Bucklin Trail").id, title: "Worth the hike!", img_link:"https://lh3.googleusercontent.com/proxy/X0nY8gJ7zZwbLrkYnG6E8tIOLQMMzeHrb-gF95HCJaPz0iIVvAuMGeYK8mk55kMdIWEqoFWJ34GpgBxenRuI8_HAF79EFaU0SQM3-ZEXaPcglZtJyrJZPKwt0usj")
Photo.create(date: "July 13 2020", user_id: User.all.sample.id, trail_id: Trail.find_by(name: "Killington Peak - Bucklin Trail").id, title: "Worth the hike!", img_link:"https://i.redd.it/op2yfw5fza931.jpg")

Photo.create(date: "June 1 2020", user_id: User.all.sample.id, trail_id: Trail.find_by(name: "Sterling Pond Trail").id, title: "Great summer day", img_link:"https://cdn-assets.alltrails.com/uploads/photo/image/23068576/large_ed59d1c3752be2da05df3bac2045f262.jpg")
Photo.create(date: "June 1 2020", user_id: User.all.sample.id, trail_id: Trail.find_by(name: "Sterling Pond Trail").id, title: "Great summer day", img_link:"https://lh3.googleusercontent.com/proxy/vTV9vIpYsr3OyOh1MNEC7TRtRPEo-IUK2WCVa-2MORNIDmgS7x4LW7wcjsYxi6EzP9D2TQSFRW1D5NKKWlkXWDtxVVfo2nriuc1_1OtCqWtKPSCjVeA1deSh8d_lAjeZsKo")
Photo.create(date: "June 1 2020", user_id: User.all.sample.id, trail_id: Trail.find_by(name: "Sterling Pond Trail").id, title: "Great summer day", img_link:"https://gostowe.com/wp-content/uploads/2020/09/Stowe_Summer_Sterling-Pond_MarkVandenberg_DSC_0443-scaled.jpg")

Photo.create(date: "Aug 30 2020", user_id: User.all.sample.id, trail_id: Trail.find_by(name: "Mount Ascutney - Windsor Trail").id, title: "Dreamy views", img_link:"https://vermontexplored.com/wp-content/uploads/2021/04/connecticut-river-from-mt-ascutney.jpg")
Photo.create(date: "Aug 30 2020", user_id: User.all.sample.id, trail_id: Trail.find_by(name: "Mount Ascutney - Windsor Trail").id, title: "Dreamy views", img_link:"https://cdn.branchcms.com/voZlvmzLpe-884/images/trails/woodedarea.24.jpg")
Photo.create(date: "Aug 30 2020", user_id: User.all.sample.id, trail_id: Trail.find_by(name: "Mount Ascutney - Windsor Trail").id, title: "Dreamy views", img_link:"https://i1.wp.com/www.trailsunblazed.com/wp-content/uploads/2020/06/Screen-Shot-2020-06-01-at-11.44.26-AM.png?resize=1024%2C706")

Photo.create(date: "Nov 10 2020", user_id: User.all.sample.id, trail_id: Trail.find_by(name: "Mount Tom Trail").id, title: "Fall Hike", img_link:"https://www.woodstockinn.com/sites/default/files/styles/max_2600x2600/public/2020-08/MT_Tom_1_1.jpg?itok=x7nCBGzH")
Photo.create(date: "Nov 10 2020", user_id: User.all.sample.id, trail_id: Trail.find_by(name: "Mount Tom Trail").id, title: "Fall Hike", img_link:"https://www.nps.gov/common/uploads/cropped_image/primary/8EBABD51-9C91-ED5D-ED0402701E2BA9F0.jpg?width=1600&quality=90&mode=crop")
Photo.create(date: "Nov 10 2020", user_id: User.all.sample.id, trail_id: Trail.find_by(name: "Mount Tom Trail").id, title: "Fall Hike", img_link:"https://media-cdn.tripadvisor.com/media/photo-s/01/a3/08/55/great-view.jpg")

Photo.create(date: "Apr 20 2020", user_id: User.all.sample.id, trail_id: Trail.find_by(name: "Mount Hunger - Waterbury Trail").id, title: "The great outdoors", img_link:"https://cdn.branchcms.com/voZlvmzLpe-884/images/trails/Mount-Hunger-15Oct2019-view-towards-Mansfield-128.24.jpg")
Photo.create(date: "Apr 20 2020", user_id: User.all.sample.id, trail_id: Trail.find_by(name: "Mount Hunger - Waterbury Trail").id, title: "The great outdoors", img_link:"https://4.bp.blogspot.com/-3j6zgtoMgZg/UDVVbwHGAnI/AAAAAAAANaM/fCfpdsGOJSQ/s1600/1a.JPG")
Photo.create(date: "Apr 20 2020", user_id: User.all.sample.id, trail_id: Trail.find_by(name: "Mount Hunger - Waterbury Trail").id, title: "The great outdoors", img_link:"https://lh3.googleusercontent.com/-VgavjGXhFNo/TkfN4EdrEoI/AAAAAAAAAD8/mpv8sNYP9Qw/s640/_YD02146C.jpg")

Photo.create(date: "Oct 22 2020", user_id: User.all.sample.id, trail_id: Trail.find_by(name: "Mount Pisgah").id, title: "Perfect fall day", img_link:"https://nohomejustroam.com/wp-content/uploads/2019/06/View-of-Lake-Willoughby-from-Mt-Pisgah.jpg")

Photo.create(date: "Nov 18 2020", user_id: User.all.sample.id, trail_id: Trail.find_by(name: "Haystack Mountain Trail").id, title: "Weekend Getaway", img_link:"https://cdn.branchcms.com/voZlvmzLpe-884/images/trails/Haystack-9-20-09-128.24.jpg")

Photo.create(date: "Mar 26 2021", user_id: User.all.sample.id, trail_id: Trail.find_by(name: "Lye Brook Falls Trail").id, title: "Stunning", img_link:"https://i1.wp.com/www.fateunbound.com/wp-content/uploads/2017/07/Lye-Brook-Thumbnail-WithOUT-Words.jpg?resize=1170%2C550&ssl=1")

Photo.create(date: "Mar 26 2021", user_id: User.all.sample.id, trail_id: Trail.find_by(name: "The Ridker Trail").id, title: "Winter views", img_link:"https://i.imgur.com/PMqsijq.jpeg")
Photo.create(date: "Mar 26 2021", user_id: User.all.sample.id, trail_id: Trail.find_by(name: "The Ridker Trail").id, title: "Winter views", img_link:"https://i.imgur.com/cXEHcyM.jpeg")
Photo.create(date: "Mar 26 2021", user_id: User.all.sample.id, trail_id: Trail.find_by(name: "The Ridker Trail").id, title: "Perfect walk in the woods", img_link:"https://i.imgur.com/DT5LLMY.jpeg")
Photo.create(date: "Mar 26 2021", user_id: User.all.sample.id, trail_id: Trail.find_by(name: "The Ridker Trail").id, title: "Perfect walk in the woods", img_link:"https://i.imgur.com/2HgmM2j.jpeg")

Photo.create(date: "June 22 2021", user_id: User.all.sample.id, trail_id: Trail.find_by(name:"Lonesome Lake Trail").id, title: "Dip after the Hike", img_link:"https://cdn-assets.alltrails.com/uploads/photo/image/19838488/large_c597e5fbe8d977c07a479b98567929bd.jpg")
Photo.create(date: "June 23 2020", user_id: User.all.sample.id, trail_id: Trail.find_by(name:"Lonesome Lake Trail").id, title: "Can't be this", img_link:"https://www.outdoorproject.com/sites/default/files/styles/hero_image_desktop/public/1498146933/img_0622.jpg?itok=zBxej9gV")

Photo.create(date: "Oct 12 2020", user_id: User.all.sample.id, trail_id: Trail.find_by(name: "Mount Moosilauke - Gorge Brook Trail").id, title: "Perfect fall hike", img_link:"https://i.imgur.com/EMtfu4a.jpeg")
Photo.create(date: "Oct 12 2020", user_id: User.all.sample.id, trail_id: Trail.find_by(name: "Mount Moosilauke - Gorge Brook Trail").id, title: "Fall views", img_link:"https://i.imgur.com/Ho0iHKg.jpeg")
Photo.create(date: "Oct 12 2020", user_id: User.all.sample.id, trail_id: Trail.find_by(name: "Mount Moosilauke - Gorge Brook Trail").id, title: "Stunning", img_link:"https://i.imgur.com/WUz7Zc6.jpeg")
Photo.create(date: "Oct 26 2020", user_id: User.all.sample.id, trail_id: Trail.find_by(name: "Mount Moosilauke - Gorge Brook Trail").id, title: "Stunning", img_link:"https://i.imgur.com/OL85NEl.jpeg")

Photo.create(date: "Mar 26 2021", user_id: User.all.sample.id, trail_id: Trail.find_by(name: "Flume Gorge Trail").id, title: "Catch that view!", img_link:"https://hikebiketravel.com/wp-content/uploads/2019/05/Gorge-7-of-1.jpg")
Photo.create(date: "Mar 26 2021", user_id: User.all.sample.id, trail_id: Trail.find_by(name: "Mount Willard Trail").id, title: "Amazing day", img_link:"https://bdn-data.s3.amazonaws.com/uploads/2019/09/MtWillard091119-07-600x400.jpg")

Photo.create(date: "May 2 2021", user_id: User.all.sample.id, trail_id: Trail.find_by(name: "Mount Cardigan - West Ridge Trail").id, title: "Terrific spring hike", img_link:"https://lh3.googleusercontent.com/proxy/91x0bFNrMjpOgsGqkrFTjiUuDjiaI2siLOxkD01qF-shFeB18pbnwwUb_hZiSwSHBZdLXOxEZd0EUOBCkEGUMe6doFRzUQ0-3hrcbyx7RdgB9cpVC0cIF0M4EvxMW8lXjGojBwHAUG180Ow")
Photo.create(date: "May 2 2021", user_id: User.all.sample.id, trail_id: Trail.find_by(name: "Mount Cardigan - West Ridge Trail").id, title: "Terrific spring hike", img_link:"https://lh3.googleusercontent.com/proxy/6aOLviRc1NNi4DSZlrTzy0SK1tRezMSRu7deFXq4LvlyDlV5tuoJO8pGnejPRiyXza8aJdeV6qtdWh3m68eYwbyzSv5fwXnyrPQa2T_jIrrwGYzN3ypq1E4")
Photo.create(date: "May 2 2021", user_id: User.all.sample.id, trail_id: Trail.find_by(name: "Mount Cardigan - West Ridge Trail").id, title: "Terrific spring hike", img_link:"https://1.bp.blogspot.com/-CgOVmntnByE/XbNkGSyy6xI/AAAAAAAAJaA/sPjORpihkIEwKr2FX6U6rb2VbavwWfMcwCEwYBhgL/s640/IMG_2435.HEIC")

Photo.create(date: "Oct 3 2020", user_id: User.all.sample.id, trail_id: Trail.find_by(name: "Gile Mountain Trail").id, title: "Gorgeous Fall Foliage", img_link:"https://i.imgur.com/jkiu3nk.jpeg")
Photo.create(date: "Oct 8 2020", user_id: User.all.sample.id, trail_id: Trail.find_by(name: "Gile Mountain Trail").id, title: "Gorgeous Fall Foliage", img_link:"https://cdn-assets.alltrails.com/uploads/photo/image/20449774/large_1fb9f1a354759e5436af9db3d52fa9ef.jpg")
Photo.create(date: "Oct 3 2020", user_id: User.all.sample.id, trail_id: Trail.find_by(name: "Gile Mountain Trail").id, title: "What a view", img_link:"https://cdn.branchcms.com/voZlvmzLpe-884/images/trails/IMG_0016-128.24.jpg")
Photo.create(date: "Oct 8 2020", user_id: User.all.sample.id, trail_id: Trail.find_by(name: "Gile Mountain Trail").id, title: "Gorgeous Fall Foliage", img_link:"https://upload.wikimedia.org/wikipedia/commons/6/68/View_from_Gile_Mountain_fire_tower_in_autumn.jpg")

Photo.create(date: "Mar 26 2021", user_id: User.all.sample.id, trail_id: Trail.find_by(name: "Mount Major - Main Trail Loop").id, title: "Stunning", img_link:"https://cdn2.apstatic.com/photos/hike/7060474_medium_1562898776.jpg")
Photo.create(date: "Mar 26 2021", user_id: User.all.sample.id, trail_id: Trail.find_by(name: "Mount Tecumseh Trail").id, title: "Stunning", img_link:"https://cdn2.apstatic.com/photos/hike/7021968_medium_1554840543.jpg")
Photo.create(date: "Mar 26 2021", user_id: User.all.sample.id, trail_id: Trail.find_by(name: "Mount Kearsarge North").id, title: "Love the view", img_link:"https://upload.wikimedia.org/wikipedia/commons/c/cd/Mount_Kearsarge_from_The_Bulkhead.jpg")

Photo.create(date: "Mar 26 2021", user_id: User.all.sample.id, trail_id: Trail.find_by(name: "Beehive Loop Trail").id, title: "Stunning", img_link:"https://www.nps.gov/thingstodo/images/BeehiveTop-960.jpg?maxwidth=1200&maxheight=1200&autorotate=false")
Photo.create(date: "Mar 26 2021", user_id: User.all.sample.id, trail_id: Trail.find_by(name: "Jordan Pond Loop Trail").id, title: "Stunning", img_link:"https://acadiamagic.com/1200w/jordan-5890.jpg")
Photo.create(date: "Mar 26 2021", user_id: User.all.sample.id, trail_id: Trail.find_by(name: "Gorham Mountain").id, title: "Amazing!", img_link:"https://acadiamagic.com/1200px/gorham-mtm-2780.jpg")
Photo.create(date: "Mar 26 2021", user_id: User.all.sample.id, trail_id: Trail.find_by(name: "Rumford Whitecap Trail").id, title: "Stunning", img_link:"https://2.bp.blogspot.com/-kJ6Qh01yUoo/UHsOi2s0LhI/AAAAAAAAN8c/uJdaOSGIoAY/s1600/6.JPG")
Photo.create(date: "Mar 26 2021", user_id: User.all.sample.id, trail_id: Trail.find_by(name: "Cadillac Mountain - South Ridge Trail").id, title: "Doesn't get any better", img_link:"https://roamingspices.com/wp-content/uploads/2019/09/P8048519-1024x768.jpg")
Photo.create(date: "Mar 26 2021", user_id: User.all.sample.id, trail_id: Trail.find_by(name: "Cadillac Summit - Loop Trail").id, title: "Great for the family", img_link:"https://cdn-assets.alltrails.com/uploads/photo/image/21542230/extra_large_53d8e47a1f478f41127ca6f2d223e93e.jpg")
Photo.create(date: "Mar 26 2021", user_id: User.all.sample.id, trail_id: Trail.find_by(name: "Penobscot Mountain Trail").id, title: "The best place on earth", img_link:"https://cdn-assets.alltrails.com/uploads/photo/image/37575948/extra_large_e224d6ff00d17ffa319e3e26a572d57f.jpg")

Photo.create(date: "Nov 3 2020", user_id: User.all.sample.id, trail_id: Trail.find_by(name: "Tumbledown Brook Trail").id, title: "Stunning", img_link:"https://cdn-assets.alltrails.com/uploads/photo/image/19824262/extra_large_798fe3751d6058d995902d07a956a19a.jpg")
Photo.create(date: "Nov 18 2020", user_id: User.all.sample.id, trail_id: Trail.find_by(name: "Old Speck Mountain Trail").id, title: "Stunning", img_link:"https://cdn-assets.alltrails.com/uploads/photo/image/37570998/extra_large_0d29ef805dcc5e00b8ce74f96daec2f4.jpg")
Photo.create(date: "Mar 15 2021", user_id: User.all.sample.id, trail_id: Trail.find_by(name: "Bear Mountain Loop Trail").id, title: "Fun day!", img_link:"https://cdn-assets.alltrails.com/uploads/photo/image/37690976/extra_large_346681edf387d7884ce191dc52b2a825.jpg")
Photo.create(date: "June 12 2021", user_id: User.all.sample.id, trail_id: Trail.find_by(name: "Indian Head and Rainbow Falls").id, title: "Phew!", img_link:"https://cdn-assets.alltrails.com/uploads/photo/image/37244359/extra_large_afd814ea09febac3f54a40c12a89137f.jpg")
Photo.create(date: "June 3 2021", user_id: User.all.sample.id, trail_id: Trail.find_by(name: "Indian Head and Rainbow Falls").id, title: "Tired but worth it", img_link:"https://cdn-assets.alltrails.com/uploads/photo/image/37167472/extra_large_9afa05c87b7dcbce63b3583fa45e8d17.jpg")
Photo.create(date: "Aug 26 2020", user_id: User.all.sample.id, trail_id: Trail.find_by(name: "Indian Head and Rainbow Falls").id, title: "Tired but worth it", img_link:"https://cdn-assets.alltrails.com/uploads/photo/image/37340840/extra_large_602a44bae27d73c005115a91be61f7e0.jpg")

Photo.create(date: "May 26 2021", user_id: User.all.sample.id, trail_id: Trail.find_by(name: "Reeves Brook Loop Trail").id, title: "Stunning", img_link:"https://cdn-assets.alltrails.com/uploads/photo/image/37537946/extra_large_277ee443950262bb6549411d4d6541bf.jpg")
Photo.create(date: "Mar 26 2021", user_id: User.all.sample.id, trail_id: Trail.find_by(name: "Overlook Mountain Trail").id, title: "Love this trail", img_link:"https://cdn-assets.alltrails.com/uploads/photo/image/37490964/extra_large_25e2aa7adce4d0b0ff0eaebae4357e18.jpg")
Photo.create(date: "May 26 2021", user_id: User.all.sample.id, trail_id: Trail.find_by(name: "Overlook Mountain Trail").id, title: "Love this trail", img_link:"https://cdn-assets.alltrails.com/uploads/photo/image/37591742/extra_large_be652e4799ff3b51513cc1b636acc178.jpg")
Photo.create(date: "Mar 26 2021", user_id: User.all.sample.id, trail_id: Trail.find_by(name: "Overlook Mountain Trail").id, title: "Love this trail", img_link:"https://cdn-assets.alltrails.com/uploads/photo/image/37591754/extra_large_882d4f668a32d2d95372551c60dbb9e9.jpg")

Photo.create(date: "Feb 26 2020", user_id: User.all.sample.id, trail_id: Trail.find_by(name: "Breakneck Ridge").id, title: "Intense but worth it", img_link:"https://i.pinimg.com/originals/3f/6f/67/3f6f673035bd045ad75b46c762638db6.jpg")
Photo.create(date: "Feb 21 2020", user_id: User.all.sample.id, trail_id: Trail.find_by(name: "Breakneck Ridge").id, title: "President's Day Weekend", img_link:"https://cdn-assets.alltrails.com/uploads/photo/image/28328241/extra_large_1660bdc72afb5eb90cf194f4fe3c8cf8.jpg")
Photo.create(date: "Nov 3 2020", user_id: User.all.sample.id, trail_id: Trail.find_by(name: "Breakneck Ridge").id, title: "President's Day Weekend", img_link:"https://cdn-assets.alltrails.com/uploads/photo/image/37679335/extra_large_010659399cea1e49c63579b694916f78.jpg")

Photo.create(date: "June 2 2021", user_id: User.all.sample.id, trail_id: Trail.find_by(name: "Giant Ledge Trail").id, title: "Stunning", img_link:"https://cdn-assets.alltrails.com/uploads/photo/image/11378622/extra_large_088dbd440383c88020ec39894a5f620b.jpg")
Photo.create(date: "Mar 26 2021", user_id: User.all.sample.id, trail_id: Trail.find_by(name: "Gertrude's Nose Trail").id, title: "Stunning", img_link:"https://cdn-assets.alltrails.com/uploads/photo/image/37626893/extra_large_ad4b38faef58b432e3b6cd96c4942b6a.jpg")
Photo.create(date: "July 26 2020", user_id: User.all.sample.id, trail_id: Trail.find_by(name: "Stump Pond Loop Trail").id, title: "Stunning", img_link:"https://cdn-assets.alltrails.com/uploads/photo/image/19855965/extra_large_f0ea6b60b1e7f4fbed2a80a2f785c328.jpg")
Photo.create(date: "Aug 1 2020", user_id: User.all.sample.id, trail_id: Trail.find_by(name: "Cascade Mountain Trail").id, title: "Stunning", img_link:"https://cdn-assets.alltrails.com/uploads/photo/image/23690374/extra_large_653214e8769f25937a89aebfa59cd570.jpg")


puts "seeded photos"

#trail_lists 
TrailList.create(list_id: List.first.id, trail_id: Trail.first.id)

puts "seeded trail lists"



puts "seeding done!"