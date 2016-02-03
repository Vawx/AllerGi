require './lib/restaurant'
require './lib/dish'
require 'pry'

restaurant_list =[
["Carte Blanche, +1-971-258-2895, 3207 SE Hawthorne Blvd, 0"],
["Screen Door, +1-503-542-0880, 2337 E Burnside St, 0"],
["Tasty n Alder, +1-503-621-9251, 580 SW 12th Ave, 0"],
["The Observatory, +1-503-445-6284, 8115 SE Stark St, 0"],
["Tasty n Sons, +1-503-621-1400, Hub Building, 0"],
["Shut Up and Eat, +1-503-719-6449, 3848 SE Gladstone St, 0"],
["Retrolicious, +1-503-539-3808, Old Town - Chinatown, 0"],
["Bird + Bear, +1-503-954-2801, 2801 SE Holgate Blvd, 0"],
["Taylor Railworks, +1-503-208-2573, 117 SE Taylor, 0"],
["The American Local, +1-503-954-2687, 3003 SE Division St, 0"],
["Hey Stella's Cocina, +1-503-882-3230, 3530 SW Multnomah Blvd, 0"],
["Veritable Quandary, +1-503-227-7342, 1220 SW 1st Ave, 0"],
["The Coop, +1-503-208-3046, 6214 N Interstate Ave, 0"],
["Olympia Provisions, +1-503-954-3663, 107 SE Washington St, 0"],
["Toro Bravo, +1-503-281-4464, 120 NE Russell St, 0"],
["Nomad PDX, +1-541-480-4207, 1200 SW Morrison St, 0"],
["Mama Chow's Kitchen, , 300 SW 2nd Ave, 0"],
["Pono Farm Soul Kitchen, +1-503-889-0885, 4118 NE Sandy Blvd, 0"],
["The Oregon Public House, +1-503-828-0884, 700 NE Dekum St, 0"],
["The Picnic House, +1-503-227-0705, 723 SW Salmon St, 0"],
["TILT, +1-503-894-9528, 1355 NW Everett St, 0"],
["PDX Sliders, +1-971-717-5271, 8064 SE 17th Ave, 0"],
["Killer Burger, +1-503-946-8946, 510 SW 3rd Ave, 0"],
["503 Burger Co, +1-503-912-4294, Mississippi Marketplace, 0"],
["Little Big Burger, +1-503-274-9008, 122 NW 10th Ave, 0"],
["Killer Burger, +1-971-544-7521, 4644 NE Sandy Blvd, 0"],
["Slow Bar, +1-503-230-7767, 533 SE Grand Ave, 0"],
["The Angry Unicorn, +1-503-498-8040, 5205 SE Foster Rd, 0"],
["TILT, +1-503-285-8458, 3449 N Anchor St, 0"],
["Nextlevel Burger, +1-503-719-7058, 4121 Se Hawthorne Blvd, 0"],
["Killer Burger, +1-503-841-5906, 8728 SE 17th Ave, 0"],
["Brunch Box, +1-503-287-4377, 620 SW 9th Ave, 0"],
["Tin Shed, +1-503-288-6966, 1438 NE Alberta St, 0"],
["Burger Guild, +1-401-287-4373, 4926 SE Division St, 0"],
["Laurelhurst Cafe, +1-503-548-6320, 4611 E Burnside St, 0"],
["Little Big Burger, +1-971-544-7817, 930 NW 23rd Ave, 0"],
["Wilder, , 5501 NE 30th Ave, 0"],
["Kay's Bar, +1-503-232-4447, 6903 SE Milwaukie Ave, 0"],
["Swift and Union, +1-503-206-4281, 8103 N Denver, 0"],
["Canyon Grill, +1-503-292-5131, 8825 SW Canyon Rd, 0"]
]

restaurant_list.each do |r|
  split = r[0].split( "," )
  Restaurant.create( {name: split[0], phone: split[1], location: split[2], views: 0})
end
