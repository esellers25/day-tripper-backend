
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
User.create(name: "Erin Sellers", username: "esellers", email: "erin.e.sellers@gmail.com", password: "123", location: "Brooklyn, NY", profile_picture: "https://drive.google.com/file/d/1WLo4GXCswvf30iqvSqAqLA2MJK3Cii-I/view?usp=sharing")
User.create(name: "Elena Ridker", username: "ridz", email: "erid@gmail.com", password: "123", location: "Hartland, VT", profile_picture: "https://news.dartmouth.edu/sites/dart_news.prod/files/styles/slide/public/news/images/dartmouth-news-julie_dunfey_ken_burns_and_dayton_duncan_fall_2018_photo_credit_evan_barlow.jpg?itok=fioIdeM3")
User.create(name: "Andrew Ridker", username: "tolstoyBoi", email: "arid@gmail.com", password: "123", location: "Brooklyn, NY", profile_picture: "https://www.rcwlitagency.com/media/5756/andrew-ridker-c-george-baier-iv-3.jpg")

puts "seeded users"

#lists 
List.create(user_id: User.first.id, title: "Favorited Hikes")
List.create(user_id: User.last.id, title: "Favorited Hikes")

puts "seeded lists"

#VT Trails 
Trail.create(name: "Camel's Hump - Monroe Trail", location: "Waterbury, VT", state: "VT", difficulty: "hard", length: 6.0, elevation_gain: 2588, route_type: "Out and back", latitude: 44.32091908024217, longitude: -72.84898491586031)
Trail.create(name: "Mount Mansfield - Sunset Ridge Trail", location: "Underhill, VT", state: "VT", difficulty: "hard", length: 5.9, elevation_gain: 2687, route_type: "Loop", latitude: 44.52928044936188, longitude: -72.84307628653508)
Trail.create(name: "Killington Peak - Bucklin Trail", location: "Green Mountain National Forest", state: "VT", difficulty: "hard", length: 7.2, elevation_gain: 2470, route_type: "Out and back", latitude: 43.61774797850811, longitude: -72.88602049344486)
Trail.create(name: "Sterling Pond Trail", location: "Jeffersonville, VT", state: "VT", difficulty: "moderate", length: 2.3, elevation_gain: 908, route_type: "Out and back", latitude: 44.557204510377034, longitude: -72.79316316241061)
Trail.create(name: "Mount Ascutney - Windsor Trail", location: "Windsor, VT", state: "VT", difficulty: "moderate", length: 5.3, elevation_gain: 2500, route_type: "Out and back", latitude: 43.4235554478492, longitude: -72.40315770191614)
Trail.create(name: "Mount Tom Trail", location: "Woodstock, VT", state: "VT", difficulty: "easy", length: 4.2, elevation_gain: 643, route_type: "Out and back", latitude: 43.62472310405783, longitude: -72.5268504696483)
Trail.create(name: "Mount Hunger - Waterbury Trail", location: "CC Putnam State Forest", state: "VT", difficulty: "hard", length: 3.7, elevation_gain: 2263, route_type: "Out and back", latitude: 44.406012358520826, longitude: -72.67595400435266)
Trail.create(name: "Mount Pisgah", location: "Willoughby State Forest", state: "VT", difficulty: "moderate", length: 4.1, elevation_gain: 1653, route_type: "Out and back", latitude: 44.863154264420054, longitude: -72.03239627146314)
Trail.create(name: "Haystack Mountain Trail", location: "Green Mountain National Forest", state: "VT", difficulty: "moderate", length: 5.0, elevation_gain: 1010, route_type: "Out and back", latitude: 42.8996447, longitude: -72.91079)
Trail.create(name: "Lye Brook Falls Trail", location: "Green Mountain National Forest", state: "VT", difficulty: "moderate", length: 4.4, elevation_gain: 918, route_type: "Out and back", latitude: 43.931637, longitude: -73.224218)
Trail.create(name: "The Ridker Trail", location: "Hartland, VT", state: "VT", difficulty: "easy", length: 1.3, elevation_gain: 400, route_type: "Loop", latitude: 43.57898682980803, longitude: -72.3945561884198)

#NH Trails 
Trail.create(name: "Lonesome Lake Trail", location: "Lincoln, NH", state: "NH", difficulty: "moderate", length: 3.1, elevation_gain: 1026, route_type: "Loop", latitude: 44.1430, longitude: 71.6896)
Trail.create(name: "Mount Moosilauke - Gorge Book Trail", location: "North Woodstock, NH", state: "NH", difficulty: "hard", length: 7.1, elevation_gain: 2513, route_type: "Out and back", latitude: 44.04052013652603, longitude: -71.79289528901403)
Trail.create(name: "Flume Gorge Trail", location: "Lincoln, NH", state: "NH", difficulty: "easy", length: 2.2, elevation_gain: 488, route_type: "Loop", latitude: 44.09842487633608, longitude: -71.67935276214901)
Trail.create(name: "Mount Willard Trail", location: "Carroll, NH", state: "NH", difficulty: "moderate", length: 2.7, elevation_gain: 895, route_type: "Out and back", latitude: 44.218592, longitude: -71.410871)
Trail.create(name: "Mount Cardigan - West Ridge Trail", location: "Orange, NH", state: "NH", difficulty: "moderate", length: 3.1, elevation_gain: 1194, route_type: "Out and back", latitude: 43.64724427911405, longitude: -71.93611998080722)
Trail.create(name: "Gile Mountain Trail", location: "Norwich, NH", state: "NH", difficulty: "easy", length: 1.4, elevation_gain: 393, route_type: "Out and back", latitude: 43.79015327708058, longitude: -72.34286251534498)
Trail.create(name: "Mount Major - Main Trail Loop", location: "Alton Bay, NH", state: "NH", difficulty: "moderate", length: 3.7, elevation_gain: 1148, route_type: "Loop", latitude: 43.51990377592226, longitude: -71.27284816504974)
Trail.create(name: "Mount Tecumseh Trail", location: "White Mountain National Forest", state: "NH", difficulty: "hard", length: 5.2, elevation_gain: 2283, route_type: "Out and back", latitude: 44.095686537220566, longitude: -71.52235185150232)
Trail.create(name: "Mount Kearsarge North", location: "Intervale, NH", state: "NH", difficulty: "hard", length: 6.4, elevation_gain: 2588, route_type: "Out and back", latitude: 44.2274182555471, longitude: -71.1335583246487)

#ME Trails
Trail.create(name: "Beehive Loop Trail", location: "Acadia National Park", state: "ME", difficulty: "hard", length: 1.5, elevation_gain: 508, route_type: "Loop", latitude: 44.33173252806464, longitude: -68.18532430127135)
Trail.create(name: "Jordan Pond Loop Trail", location: "Acadia National Park", state: "ME", difficulty: "moderate", length: 3.4, elevation_gain: 95, route_type: "Loop", latitude: 44.3235992933219, longitude: -68.25372948137887)
Trail.create(name: "Gorham Mountain", location: "Acadia National Park", state: "ME", difficulty: "moderate", length: 1.6, elevation_gain: 429, route_type: "Out and back", latitude: 44.31670980658919, longitude: -68.19171001563613)
Trail.create(name: "Rumford Whitecap Trail", location: "Rumford, ME", state: "ME", difficulty: "moderate", length: 5.8, elevation_gain: 1689, route_type: "Out and back", latitude: 44.55096286894254, longitude: -70.6765160217059)
Trail.create(name: "Cadillac Mountain - South Ridge Trail", location: "Acadia National Park", state: "ME", difficulty: "moderate", length: 8.0, elevation_gain: 2286, route_type: "Loop", latitude: 44.31342753921267, longitude: -68.21502883068996)
Trail.create(name: "Cadillac Summit - Loop Trail", location: "Acadia National Park", state: "ME", difficulty: "easy", length: 0.4, elevation_gain: 52, route_type: "Loop", latitude: 44.35241584342626, longitude: -68.22397715955836)
Trail.create(name: "Penobscot Mountain Trail", location: "Acadia National Park", state: "ME", difficulty: "moderate", length: 2.9, elevation_gain: 974, route_type: "Out and back", latitude: 44.32301091755742, longitude: -68.25354229011165)
Trail.create(name: "Tumbledown Brook Trail", location: "Weld, ME", state: "ME", difficulty: "moderate", length: 4.7, elevation_gain: 1840, route_type: "Out and back", latitude: 44.729878053981125, longitude: -70.53239059037965)
Trail.create(name: "Old Speck Mountain Trail", location: "Grafton Notch State Park", state: "ME", difficulty: "hard", length: 7.4, elevation_gain: 2870, route_type: "Out and back", latitude: 44.5896114, longitude: -70.9475613)

#NY Trails
Trail.create(name: "Bear Mountain Loop Trail", location: "Bear Mountain, NY", state: "NY", difficulty: "moderate", length: 3.8, elevation_gain: 1154, route_type: "Out and back", latitude: 41.313540996721365, longitude: -73.98877834171425)
Trail.create(name: "Indian Head and Rainbow Falls", location: "Adirondack Mountain Reserve", state: "NY", difficulty: "moderate", length: 10.8, elevation_gain: 1978, route_type: "Loop", latitude: 44.15040117229893, longitude: -73.76776738325552)
Trail.create(name: "Reeves Brook Loop Trail", location: "Harriman State Park", state: "NY", difficulty: "moderate", length: 3.8, elevation_gain: 872, route_type: "Loop", latitude: 41.17437271384687, longitude: -74.16840115965978)
Trail.create(name: "Overlook Mountain Trail", location: "Woodstock, NY", state: "NY", difficulty: "moderate", length: 4.6, elevation_gain: 1397, route_type: "Out and back", latitude: 42.071318826297016, longitude: -74.12259933106299)
Trail.create(name: "Breakneck Ridge", location: "Hudson Highlands State Park Preserve", state: "NY", difficulty: "hard", length: 3.2, elevation_gain: 1250, route_type: "Loop", latitude: 41.44322, longitude: -73.97795)
Trail.create(name: "Giant Ledge Trail", location: "Big Indian, NY", state: "NY", difficulty: "moderate", length: 7.1, elevation_gain: 2053, route_type: "Out and back", latitude: 42.03316313596693, longitude: -74.4064988083823)
Trail.create(name: "Gertrude's Nose Trail", location: "High Falls, NY", state: "NY", difficulty: "moderate", length: 6.9, elevation_gain: 1135, route_type: "Loop", latitude: 41.73057144872334, longitude: -74.23441812883625)
Trail.create(name: "Stump Pond Loop Trail", location: "Blydenburgh County Park", state: "NY", difficulty: "easy", length: 6.1, elevation_gain: 187, route_type: "Loop", latitude: 40.824707, longitude: -73.221348)
Trail.create(name: "Cascade Mountain Trail", location: "Keene, NY", state: "NY", difficulty: "hard", length: 5.6, elevation_gain: 2286, route_type: "Out and back", latitude: 44.21968234813167, longitude: -73.88753151918087)

puts "seeded trails"

#Reviews 
Review.create(comment: "Definition of a moderate hike - rocky in some places. Amazing views at the top.", difficulty: "moderate", rating: 4, date: "Oct 2 2020", trail_id: Trail.first.id, user_id: User.first.id)
Review.create(comment: "Brutal, killer on the knees!", difficulty: "hard", rating: 2, date: "Sept 22 2020", trail_id: Trail.first.id, user_id: User.last.id)

puts "seeded reviews"

#photos 
Photo.create(date: "Oct 2 2020", user_id: User.first.id, trail_id: Trail.first.id, title: "Top of the hump", img_link:"https://static.rootsrated.com/image/upload/s--YxiMHiNL--/t_rr_large_traditional/l8t1w2es8h3weub3rkmf.jpg")

puts "seeded photos"

#trail_lists 
TrailList.create(list_id: List.first.id, trail_id: Trail.first.id)

puts "seeded trail lists"

Item.create(name: "Spikes", description: "Womens spikes for icy or slippery hikes. They run a little small, can fit up to a size 9.", borrowed: false, user_id: User.first.id, picture: "https://www.ebay.com/itm/203443015740?_trkparms=ispr%3D1&amdata=enc%3AAQAFAAAAkDEvIEMYUwhL0GWrHNWRR%2Fg209xYPVGoWEx7JzQ7zNOvqgYQUTLEzbtJ75YqbGEDk4YszTetID7gpYd8hQturzGChhguNwfnpE4iwLRDlpJ0slWqveX0frCNiftolXBfEWNLe4QswyqSHjMH8QZCcPPO3qGY4XzWfx71CIwaST1G4jmNo%2FAPUCYR61ZpMhnowg%3D%3D&chn=ps&norover=1&mkevt=1&mkrid=711-117182-37290-0&mkcid=2&itemid=203443015740&targetid=1262906534562&device=c&mktype=pla&googleloc=9004351&poi=&campaignid=12874653489&mkgroupid=121942647533&rlsatarget=pla-1262906534562&abcId=9300535&merchantid=223114833&gclid=CjwKCAjwwqaGBhBKEiwAMk-FtOc0PQVauririLjN04PH9MnfYFzuoxYTQ0EfPGEY1EPqjL0f56WqPBoCrxwQAvD_BwE")

puts "item created"

puts "seeding done!"