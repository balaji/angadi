# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).

Category.create([{name: 'Movies, Music & Video Games'},
                 {name: 'Books'},
                 {name: 'Mobiles & Tablets'},
                 {name: 'Computers & Accessories'},
                 {name: 'Cameras, Audio & Video'},
                 {name: 'Home, Kitchen & Pets'},
                 {name: 'Toys & Baby Products'},
                 {name: 'Sports, Fitness & Outdoors'},
                 {name: 'Beauty, Health & Gourmet'},
                 {name: 'Clothing & Accessories'},
                 {name: 'eBooks'},
                 {name: 'Hindi'},
                 {name: 'Tamil'},
                 {name: 'Marathi'},
                 {name: 'Competitive Books'},
                 {name: 'Fiction'},
                 {name: 'Textbooks'},
                 {name: 'New Releases'},
                 {name: 'Children & Young Adult'},
                 {name: 'Digital SLRs'},
                 {name: 'Musical Instruments'},
                 {name: 'Camcorders'},
                 {name: 'Speakers'},
                 {name: 'MP3 & Media Players'},
                 {name: 'PC Games'},
                 {name: 'Consoles'},
                 {name: 'Blu-ray'},
                 {name: 'International Music'},
                 {name: 'Action'},
                 {name: 'Romance'},
                 {name: 'Comedy'},
                 {name: 'Horror'},
                 {name: 'Smartphones'},
                 {name: 'Windows Mobiles'},
                 {name: 'Android Mobiles'},
                 {name: 'Cases & Covers'},
                 {name: 'Power Banks'},
                 {name: 'Android Tablets'},
                 {name: 'Windows Tablets'},
                 {name: 'Women\'s Clothing'},
                 {name: 'Men\'s Clothing'},
                 {name: 'Kid\'s Clothing'},
                 {name: 'Dogs'},
                 {name: 'Cats'},
                 {name: 'Birds'},
                 {name: 'Fish & Aquatics'},
                 {name: 'Home Improvement'},
                 {name: 'Furniture'},
                 {name: 'Kitchen & Home Appliances'},
                 {name: 'Luxury Beauty'},
                 {name: 'Fragrance'},
                 {name: 'Diet & Nutrition'},
                 {name: 'Snack Foods'},
                 {name: 'Cycling'},
                 {name: 'Cricket'},
                 {name: 'Badminton'},
                 {name: 'Swimming'},
                 {name: 'Golf'},
                 {name: 'Football'},
                 {name: 'Tennis'},
                 {name: 'Running'},
                 {name: 'Laptops'},
                 {name: 'Software'},
                 {name: 'Computer Accessories'},
                 {name: 'Pen Drives'},
                 {name: 'Desktop Monitors'},
                 {name: 'Memory Cards'},
                 {name: 'Networking & Internet Devices'}])


Category.update(Category.where(name: 'Running').ids, [{parent_id: Category.find_by_name('Sports, Fitness & Outdoors').id}])
Category.update(Category.where(name: 'Tennis').ids, [{parent_id: Category.find_by_name('Sports, Fitness & Outdoors').id}])
Category.update(Category.where(name: 'Football').ids, [{parent_id: Category.find_by_name('Sports, Fitness & Outdoors').id}])
Category.update(Category.where(name: 'Badminton').ids, [{parent_id: Category.find_by_name('Sports, Fitness & Outdoors').id}])
Category.update(Category.where(name: 'Golf').ids, [{parent_id: Category.find_by_name('Sports, Fitness & Outdoors').id}])
Category.update(Category.where(name: 'Swimming').ids, [{parent_id: Category.find_by_name('Sports, Fitness & Outdoors').id}])
Category.update(Category.where(name: 'Cricket').ids, [{parent_id: Category.find_by_name('Sports, Fitness & Outdoors').id}])
Category.update(Category.where(name: 'Cycling').ids, [{parent_id: Category.find_by_name('Sports, Fitness & Outdoors').id}])
Category.update(Category.where(name: 'Snack Foods').ids, [{parent_id: Category.find_by_name('Beauty, Health & Gourmet').id}])
Category.update(Category.where(name: 'Diet & Nutrition').ids, [{parent_id: Category.find_by_name('Beauty, Health & Gourmet').id}])
Category.update(Category.where(name: 'Fragrance').ids, [{parent_id: Category.find_by_name('Beauty, Health & Gourmet').id}])
Category.update(Category.where(name: 'Luxury Beauty').ids, [{parent_id: Category.find_by_name('Beauty, Health & Gourmet').id}])
Category.update(Category.where(name: 'Fish & Aquatics').ids, [{parent_id: Category.find_by_name('Home, Kitchen & Pets').id}])
Category.update(Category.where(name: 'Birds').ids, [{parent_id: Category.find_by_name('Home, Kitchen & Pets').id}])
Category.update(Category.where(name: 'Cats').ids, [{parent_id: Category.find_by_name('Home, Kitchen & Pets').id}])
Category.update(Category.where(name: 'Dogs').ids, [{parent_id: Category.find_by_name('Home, Kitchen & Pets').id}])
Category.update(Category.where(name: 'Home Improvement').ids, [{parent_id: Category.find_by_name('Home, Kitchen & Pets').id}])
Category.update(Category.where(name: 'Kitchen & Home Appliances').ids, [{parent_id: Category.find_by_name('Home, Kitchen & Pets').id}])
Category.update(Category.where(name: 'Furniture').ids, [{parent_id: Category.find_by_name('Home, Kitchen & Pets').id}])
Category.update(Category.where(name: 'Men\'s Clothing').ids, [{parent_id: Category.find_by_name('Clothing & Accessories').id}])
Category.update(Category.where(name: 'Women\'s Clothing').ids, [{parent_id: Category.find_by_name('Clothing & Accessories').id}])
Category.update(Category.where(name: 'Kid\'s Clothing').ids, [{parent_id: Category.find_by_name('Clothing & Accessories').id}])
Category.update(Category.where(name: 'Smartphones').ids, [{parent_id: Category.find_by_name('Mobiles & Tablets').id}])
Category.update(Category.where(name: 'Windows Mobiles').ids, [{parent_id: Category.find_by_name('Mobiles & Tablets').id}])
Category.update(Category.where(name: 'Android Mobiles').ids, [{parent_id: Category.find_by_name('Mobiles & Tablets').id}])
Category.update(Category.where(name: 'Cases & Covers').ids, [{parent_id: Category.find_by_name('Mobiles & Tablets').id}])
Category.update(Category.where(name: 'Power Banks').ids, [{parent_id: Category.find_by_name('Mobiles & Tablets').id}])
Category.update(Category.where(name: 'Android Tablets').ids, [{parent_id: Category.find_by_name('Mobiles & Tablets').id}])
Category.update(Category.where(name: 'Windows Tablets').ids, [{parent_id: Category.find_by_name('Mobiles & Tablets').id}])
Category.update(Category.where(name: 'PC Games').ids, [{parent_id: Category.find_by_name('Movies, Music & Video Games').id}])
Category.update(Category.where(name: 'Consoles').ids, [{parent_id: Category.find_by_name('Movies, Music & Video Games').id}])
Category.update(Category.where(name: 'Blu-ray').ids, [{parent_id: Category.find_by_name('Movies, Music & Video Games').id}])
Category.update(Category.where(name: 'International Music').ids, [{parent_id: Category.find_by_name('Movies, Music & Video Games').id}])
Category.update(Category.where(name: 'Action').ids, [{parent_id: Category.find_by_name('Movies, Music & Video Games').id}])
Category.update(Category.where(name: 'Romance').ids, [{parent_id: Category.find_by_name('Movies, Music & Video Games').id}])
Category.update(Category.where(name: 'Comedy').ids, [{parent_id: Category.find_by_name('Movies, Music & Video Games').id}])
Category.update(Category.where(name: 'Horror').ids, [{parent_id: Category.find_by_name('Movies, Music & Video Games').id}])
Category.update(Category.where(name: 'Digital SLRs').ids, [{parent_id: Category.find_by_name('Cameras, Audio & Video').id}])
Category.update(Category.where(name: 'Musical Instruments').ids, [{parent_id: Category.find_by_name('Cameras, Audio & Video').id}])
Category.update(Category.where(name: 'Camcorders').ids, [{parent_id: Category.find_by_name('Cameras, Audio & Video').id}])
Category.update(Category.where(name: 'Speakers').ids, [{parent_id: Category.find_by_name('Cameras, Audio & Video').id}])
Category.update(Category.where(name: 'MP3 & Media Players').ids, [{parent_id: Category.find_by_name('Cameras, Audio & Video').id}])
Category.update(Category.where(name: 'eBooks').ids, [{parent_id: Category.find_by_name('Books').id}])
Category.update(Category.where(name: 'Hindi').ids, [{parent_id: Category.find_by_name('Books').id}])
Category.update(Category.where(name: 'Tamil').ids, [{parent_id: Category.find_by_name('Books').id}])
Category.update(Category.where(name: 'Marathi').ids, [{parent_id: Category.find_by_name('Books').id}])
Category.update(Category.where(name: 'Competitive Books').ids, [{parent_id: Category.find_by_name('Books').id}])
Category.update(Category.where(name: 'Fiction').ids, [{parent_id: Category.find_by_name('Books').id}])
Category.update(Category.where(name: 'Textbooks').ids, [{parent_id: Category.find_by_name('Books').id}])
Category.update(Category.where(name: 'New Releases').ids, [{parent_id: Category.find_by_name('Books').id}])
Category.update(Category.where(name: 'Children & Young Adult').ids, [{parent_id: Category.find_by_name('Books').id}])
Category.update(Category.where(name: 'Laptops').ids, [{parent_id: Category.find_by_name('Computers & Accessories').id}])
Category.update(Category.where(name: 'Software').ids, [{parent_id: Category.find_by_name('Computers & Accessories').id}])
Category.update(Category.where(name: 'Computer Accessories').ids, [{parent_id: Category.find_by_name('Computers & Accessories').id}])
Category.update(Category.where(name: 'Pen Drives').ids, [{parent_id: Category.find_by_name('Computers & Accessories').id}])
Category.update(Category.where(name: 'Desktop Monitors').ids, [{parent_id: Category.find_by_name('Computers & Accessories').id}])
Category.update(Category.where(name: 'Memory Cards').ids, [{parent_id: Category.find_by_name('Computers & Accessories').id}])
Category.update(Category.where(name: 'Networking & Internet Devices').ids, [{parent_id: Category.find_by_name('Computers & Accessories').id}])