# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).

Category.create([{ name: 'Music & Video Games' },
                 { name: 'Books' },
                 { name: 'Mobiles' },
                 { name: 'Computers & Accessories' },
                 { name: 'Cameras, Audio & Video' },
                 { name: 'Home, Kitchen & Pets' },
                 { name: 'Toys & Baby Products' },
                 { name: 'Sports, Fitness & Outdoors' },
                 { name: 'Clothing & Accessories' },
                 { name: 'English' },
                 { name: 'Competitive Books' },
                 { name: 'Fiction' },
                 { name: 'Children & Young Adult' },
                 { name: 'Digital SLRs' },
                 { name: 'Musical Instruments' },
                 { name: 'Camcorders' },
                 { name: 'Speakers' },
                 { name: 'MP3 & Media Players' },
                 { name: 'PC Games' },
                 { name: 'Consoles' },
                 { name: 'Blu-ray' },
                 { name: 'International Music' },
                 { name: 'Rock' },
                 { name: 'Classic Rock' },
                 { name: 'Hard Rock' },
                 { name: 'Jazz' },
                 { name: 'Smartphones' },
                 { name: 'Windows Mobiles' },
                 { name: 'Android Mobiles' },
                 { name: 'Cases & Covers' },
                 { name: 'Women\'s Clothing' },
                 { name: 'Men\'s Clothing' },
                 { name: 'Kid\'s Clothing' },
                 { name: 'Dogs' },
                 { name: 'Home Improvement' },
                 { name: 'Furniture' },
                 { name: 'Kitchen & Home Appliances' },
                 { name: 'Cricket' },
                 { name: 'Badminton' },
                 { name: 'Football' },
                 { name: 'Tennis' },
                 { name: 'Laptops' },
                 { name: 'Pen Drives' },
                 { name: 'Desktop Monitors' },
                 { name: 'Networking & Internet Devices' }])

Category.update(Category.where(name: 'Tennis').ids, [{ parent_id: Category.find_by_name('Sports, Fitness & Outdoors').id }])
Category.update(Category.where(name: 'Football').ids, [{ parent_id: Category.find_by_name('Sports, Fitness & Outdoors').id }])
Category.update(Category.where(name: 'Badminton').ids, [{ parent_id: Category.find_by_name('Sports, Fitness & Outdoors').id }])
Category.update(Category.where(name: 'Cricket').ids, [{ parent_id: Category.find_by_name('Sports, Fitness & Outdoors').id }])

Category.update(Category.where(name: 'Dogs').ids, [{ parent_id: Category.find_by_name('Home, Kitchen & Pets').id }])
Category.update(Category.where(name: 'Home Improvement').ids, [{ parent_id: Category.find_by_name('Home, Kitchen & Pets').id }])
Category.update(Category.where(name: 'Kitchen & Home Appliances').ids, [{ parent_id: Category.find_by_name('Home, Kitchen & Pets').id }])
Category.update(Category.where(name: 'Furniture').ids, [{ parent_id: Category.find_by_name('Home, Kitchen & Pets').id }])

Category.update(Category.where(name: 'Men\'s Clothing').ids, [{ parent_id: Category.find_by_name('Clothing & Accessories').id }])
Category.update(Category.where(name: 'Women\'s Clothing').ids, [{ parent_id: Category.find_by_name('Clothing & Accessories').id }])
Category.update(Category.where(name: 'Kid\'s Clothing').ids, [{ parent_id: Category.find_by_name('Clothing & Accessories').id }])

Category.update(Category.where(name: 'Smartphones').ids, [{ parent_id: Category.find_by_name('Mobiles').id }])
Category.update(Category.where(name: 'Windows Mobiles').ids, [{ parent_id: Category.find_by_name('Mobiles').id }])
Category.update(Category.where(name: 'Android Mobiles').ids, [{ parent_id: Category.find_by_name('Mobiles').id }])
Category.update(Category.where(name: 'Cases & Covers').ids, [{ parent_id: Category.find_by_name('Mobiles').id }])

Category.update(Category.where(name: 'PC Games').ids, [{ parent_id: Category.find_by_name('Music & Video Games').id }])
Category.update(Category.where(name: 'Consoles').ids, [{ parent_id: Category.find_by_name('Music & Video Games').id }])
Category.update(Category.where(name: 'Blu-ray').ids, [{ parent_id: Category.find_by_name('Music & Video Games').id }])
Category.update(Category.where(name: 'International Music').ids, [{ parent_id: Category.find_by_name('Music & Video Games').id }])
Category.update(Category.where(name: 'Rock').ids, [{ parent_id: Category.find_by_name('International Music').id }])
Category.update(Category.where(name: 'Classic Rock').ids, [{ parent_id: Category.find_by_name('Rock').id }])
Category.update(Category.where(name: 'Hard Rock').ids, [{ parent_id: Category.find_by_name('Rock').id }])
Category.update(Category.where(name: 'Jazz').ids, [{ parent_id: Category.find_by_name('International Music').id }])

Category.update(Category.where(name: 'Digital SLRs').ids, [{ parent_id: Category.find_by_name('Cameras, Audio & Video').id }])
Category.update(Category.where(name: 'Camcorders').ids, [{ parent_id: Category.find_by_name('Cameras, Audio & Video').id }])
Category.update(Category.where(name: 'Speakers').ids, [{ parent_id: Category.find_by_name('Cameras, Audio & Video').id }])
Category.update(Category.where(name: 'MP3 & Media Players').ids, [{ parent_id: Category.find_by_name('Cameras, Audio & Video').id }])

Category.update(Category.where(name: 'English').ids, [{ parent_id: Category.find_by_name('Books').id }])
Category.update(Category.where(name: 'Competitive Books').ids, [{ parent_id: Category.find_by_name('Books').id }])
Category.update(Category.where(name: 'Fiction').ids, [{ parent_id: Category.find_by_name('Books').id }])
Category.update(Category.where(name: 'Children & Young Adult').ids, [{ parent_id: Category.find_by_name('Books').id }])

Category.update(Category.where(name: 'Laptops').ids, [{ parent_id: Category.find_by_name('Computers & Accessories').id }])
Category.update(Category.where(name: 'Pen Drives').ids, [{ parent_id: Category.find_by_name('Computers & Accessories').id }])
Category.update(Category.where(name: 'Desktop Monitors').ids, [{ parent_id: Category.find_by_name('Computers & Accessories').id }])
Category.update(Category.where(name: 'Networking & Internet Devices').ids, [{ parent_id: Category.find_by_name('Computers & Accessories').id }])

Brand.create(name: 'Canon')
Brand.create(name: 'Nikon')
Brand.create(name: 'Microsoft')
Brand.create(name: 'Apple')
Brand.create(name: 'Samsung')
Brand.create(name: 'HTC')
Brand.create(name: 'Belkin')
Brand.create(name: 'Spigen')
Brand.create(name: 'Sony')
Brand.create(name: 'Dell')
Brand.create(name: 'LG')
Brand.create(name: 'Kingston')
Brand.create(name: 'Sandisk')
Brand.create(name: 'D-Link')
Brand.create(name: 'Netgear')
Brand.create(name: 'Bose')
Brand.create(name: 'Audio-Technica')
Brand.create(name: 'Adidas')
Brand.create(name: 'Nike')
Brand.create(name: 'Wilson')
Brand.create(name: 'GM')
Brand.create(name: 'Indigo Nation')
Brand.create(name: 'Levi\'s')
Brand.create(name: 'Enamor')
Brand.create(name: 'Gini & Jony')
Brand.create(name: 'Chhota Bheem')
Brand.create(name: 'Rockstar Games')
Brand.create(name: 'EA Games')
Brand.create(name: 'Microsoft XBOX')
Brand.create(name: 'Sony PlayStation')
Brand.create(name: 'Universal')
Brand.create(name: 'Marvel Comics')
Brand.create(name: 'DC Comics')
Brand.create(name: 'Sony Music')
Brand.create(name: 'Penguin Books')
Brand.create(name: 'Pearson Education')
Brand.create(name: 'Pedigree')
Brand.create(name: 'Havells')
Brand.create(name: 'Morphy Richards')
Brand.create(name: 'Godrej')
Brand.create(name: 'Bosch')
Brand.create(name: 'Decor Nation')
Brand.create(name: 'Bloomsbury Press')
Brand.create(name: 'Island Records')

Product.create(name: 'Product 1', category: Category.find_by(name: 'Tennis'), brand: Brand.find_by(name: 'Wilson'), description: 'This is a short description. Lorem ipsum dolor sit amet, consectetur adipiscing elit.')
Product.create(name: 'Product 2', category: Category.find_by(name: 'Tennis'), brand: Brand.find_by(name: 'Wilson'), description: 'This is a short description. Lorem ipsum dolor sit amet, consectetur adipiscing elit.')
Product.create(name: 'Product 3', category: Category.find_by(name: 'Tennis'), brand: Brand.find_by(name: 'Wilson'), description: 'This is a short description. Lorem ipsum dolor sit amet, consectetur adipiscing elit.')
Product.create(name: 'Product 4', category: Category.find_by(name: 'Football'), brand: Brand.find_by(name: 'Nike'), description: 'This is a short description. Lorem ipsum dolor sit amet, consectetur adipiscing elit.')
Product.create(name: 'Product 5', category: Category.find_by(name: 'Football'), brand: Brand.find_by(name: 'Nike'), description: 'This is a short description. Lorem ipsum dolor sit amet, consectetur adipiscing elit.')
Product.create(name: 'Product 6', category: Category.find_by(name: 'Football'), brand: Brand.find_by(name: 'Nike'), description: 'This is a short description. Lorem ipsum dolor sit amet, consectetur adipiscing elit.')
Product.create(name: 'Product 7', category: Category.find_by(name: 'Badminton'), brand: Brand.find_by(name: 'Adidas'), description: 'This is a short description. Lorem ipsum dolor sit amet, consectetur adipiscing elit.')
Product.create(name: 'Product 8', category: Category.find_by(name: 'Badminton'), brand: Brand.find_by(name: 'Adidas'), description: 'This is a short description. Lorem ipsum dolor sit amet, consectetur adipiscing elit.')
Product.create(name: 'Product 9', category: Category.find_by(name: 'Badminton'), brand: Brand.find_by(name: 'Adidas'), description: 'This is a short description. Lorem ipsum dolor sit amet, consectetur adipiscing elit.')
Product.create(name: 'Product 10', category: Category.find_by(name: 'Cricket'), brand: Brand.find_by(name: 'GM'), description: 'This is a short description. Lorem ipsum dolor sit amet, consectetur adipiscing elit.')
Product.create(name: 'Product 11', category: Category.find_by(name: 'Cricket'), brand: Brand.find_by(name: 'GM'), description: 'This is a short description. Lorem ipsum dolor sit amet, consectetur adipiscing elit.')
Product.create(name: 'Product 12', category: Category.find_by(name: 'Cricket'), brand: Brand.find_by(name: 'GM'), description: 'This is a short description. Lorem ipsum dolor sit amet, consectetur adipiscing elit.')
Product.create(name: 'Product 13', category: Category.find_by(name: 'Men\'s Clothing'), brand: Brand.find_by(name: 'Levi\'s'), description: 'This is a short description. Lorem ipsum dolor sit amet, consectetur adipiscing elit.')
Product.create(name: 'Product 14', category: Category.find_by(name: 'Men\'s Clothing'), brand: Brand.find_by(name: 'Indigo Nation'), description: 'This is a short description. Lorem ipsum dolor sit amet, consectetur adipiscing elit.')
Product.create(name: 'Product 15', category: Category.find_by(name: 'Men\'s Clothing'), brand: Brand.find_by(name: 'Indigo Nation'), description: 'This is a short description. Lorem ipsum dolor sit amet, consectetur adipiscing elit.')
Product.create(name: 'Product 16', category: Category.find_by(name: 'Women\'s Clothing'), brand: Brand.find_by(name: 'Levi\'s'), description: 'This is a short description. Lorem ipsum dolor sit amet, consectetur adipiscing elit.')
Product.create(name: 'Product 17', category: Category.find_by(name: 'Women\'s Clothing'), brand: Brand.find_by(name: 'Enamor'), description: 'This is a short description. Lorem ipsum dolor sit amet, consectetur adipiscing elit.')
Product.create(name: 'Product 18', category: Category.find_by(name: 'Women\'s Clothing'), brand: Brand.find_by(name: 'Enamor'), description: 'This is a short description. Lorem ipsum dolor sit amet, consectetur adipiscing elit.')
Product.create(name: 'Product 19', category: Category.find_by(name: 'Kid\'s Clothing'), brand: Brand.find_by(name: 'Gini & Jony'), description: 'This is a short description. Lorem ipsum dolor sit amet, consectetur adipiscing elit.')
Product.create(name: 'Product 20', category: Category.find_by(name: 'Kid\'s Clothing'), brand: Brand.find_by(name: 'Gini & Jony'), description: 'This is a short description. Lorem ipsum dolor sit amet, consectetur adipiscing elit.')
Product.create(name: 'Product 21', category: Category.find_by(name: 'Kid\'s Clothing'), brand: Brand.find_by(name: 'Chhota Bheem'), description: 'This is a short description. Lorem ipsum dolor sit amet, consectetur adipiscing elit.')
Product.create(name: 'Product 22', category: Category.find_by(name: 'Smartphones'), brand: Brand.find_by(name: 'Apple'), description: 'This is a short description. Lorem ipsum dolor sit amet, consectetur adipiscing elit.')
Product.create(name: 'Product 23', category: Category.find_by(name: 'Smartphones'), brand: Brand.find_by(name: 'Apple'), description: 'This is a short description. Lorem ipsum dolor sit amet, consectetur adipiscing elit.')
Product.create(name: 'Product 24', category: Category.find_by(name: 'Smartphones'), brand: Brand.find_by(name: 'Apple'), description: 'This is a short description. Lorem ipsum dolor sit amet, consectetur adipiscing elit.')
Product.create(name: 'Product 25', category: Category.find_by(name: 'Windows Mobiles'), brand: Brand.find_by(name: 'Samsung'), description: 'This is a short description. Lorem ipsum dolor sit amet, consectetur adipiscing elit.')
Product.create(name: 'Product 26', category: Category.find_by(name: 'Windows Mobiles'), brand: Brand.find_by(name: 'Microsoft'), description: 'This is a short description. Lorem ipsum dolor sit amet, consectetur adipiscing elit.')
Product.create(name: 'Product 27', category: Category.find_by(name: 'Windows Mobiles'), brand: Brand.find_by(name: 'Microsoft'), description: 'This is a short description. Lorem ipsum dolor sit amet, consectetur adipiscing elit.')
Product.create(name: 'Product 28', category: Category.find_by(name: 'Android Mobiles'), brand: Brand.find_by(name: 'Samsung'), description: 'This is a short description. Lorem ipsum dolor sit amet, consectetur adipiscing elit.')
Product.create(name: 'Product 29', category: Category.find_by(name: 'Android Mobiles'), brand: Brand.find_by(name: 'Samsung'), description: 'This is a short description. Lorem ipsum dolor sit amet, consectetur adipiscing elit.')
Product.create(name: 'Product 30', category: Category.find_by(name: 'Android Mobiles'), brand: Brand.find_by(name: 'HTC'), description: 'This is a short description. Lorem ipsum dolor sit amet, consectetur adipiscing elit.')
Product.create(name: 'Product 31', category: Category.find_by(name: 'Cases & Covers'), brand: Brand.find_by(name: 'Spigen'), description: 'This is a short description. Lorem ipsum dolor sit amet, consectetur adipiscing elit.')
Product.create(name: 'Product 32', category: Category.find_by(name: 'Cases & Covers'), brand: Brand.find_by(name: 'Spigen'), description: 'This is a short description. Lorem ipsum dolor sit amet, consectetur adipiscing elit.')
Product.create(name: 'Product 33', category: Category.find_by(name: 'Cases & Covers'), brand: Brand.find_by(name: 'Belkin'), description: 'This is a short description. Lorem ipsum dolor sit amet, consectetur adipiscing elit.')
Product.create(name: 'Product 34', category: Category.find_by(name: 'Laptops'), brand: Brand.find_by(name: 'Apple'), description: 'This is a short description. Lorem ipsum dolor sit amet, consectetur adipiscing elit.')
Product.create(name: 'Product 35', category: Category.find_by(name: 'Laptops'), brand: Brand.find_by(name: 'Samsung'), description: 'This is a short description. Lorem ipsum dolor sit amet, consectetur adipiscing elit.')
Product.create(name: 'Product 36', category: Category.find_by(name: 'Laptops'), brand: Brand.find_by(name: 'Microsoft'), description: 'This is a short description. Lorem ipsum dolor sit amet, consectetur adipiscing elit.')
Product.create(name: 'Product 37', category: Category.find_by(name: 'Pen Drives'), brand: Brand.find_by(name: 'Kingston'), description: 'This is a short description. Lorem ipsum dolor sit amet, consectetur adipiscing elit.')
Product.create(name: 'Product 38', category: Category.find_by(name: 'Pen Drives'), brand: Brand.find_by(name: 'Kingston'), description: 'This is a short description. Lorem ipsum dolor sit amet, consectetur adipiscing elit.')
Product.create(name: 'Product 39', category: Category.find_by(name: 'Pen Drives'), brand: Brand.find_by(name: 'Sandisk'), description: 'This is a short description. Lorem ipsum dolor sit amet, consectetur adipiscing elit.')
Product.create(name: 'Product 40', category: Category.find_by(name: 'Desktop Monitors'), brand: Brand.find_by(name: 'LG'), description: 'This is a short description. Lorem ipsum dolor sit amet, consectetur adipiscing elit.')
Product.create(name: 'Product 41', category: Category.find_by(name: 'Desktop Monitors'), brand: Brand.find_by(name: 'Dell'), description: 'This is a short description. Lorem ipsum dolor sit amet, consectetur adipiscing elit.')
Product.create(name: 'Product 42', category: Category.find_by(name: 'Desktop Monitors'), brand: Brand.find_by(name: 'Samsung'), description: 'This is a short description. Lorem ipsum dolor sit amet, consectetur adipiscing elit.')
Product.create(name: 'Product 43', category: Category.find_by(name: 'Networking & Internet Devices'), brand: Brand.find_by(name: 'Netgear'), description: 'This is a short description. Lorem ipsum dolor sit amet, consectetur adipiscing elit.')
Product.create(name: 'Product 44', category: Category.find_by(name: 'Networking & Internet Devices'), brand: Brand.find_by(name: 'Netgear'), description: 'This is a short description. Lorem ipsum dolor sit amet, consectetur adipiscing elit.')
Product.create(name: 'Product 45', category: Category.find_by(name: 'Networking & Internet Devices'), brand: Brand.find_by(name: 'D-Link'), description: 'This is a short description. Lorem ipsum dolor sit amet, consectetur adipiscing elit.')
Product.create(name: 'Product 46', category: Category.find_by(name: 'English'), brand: Brand.find_by(name: 'Bloomsbury Press'), description: 'This is a short description. Lorem ipsum dolor sit amet, consectetur adipiscing elit.')
Product.create(name: 'Product 47', category: Category.find_by(name: 'English'), brand: Brand.find_by(name: 'Bloomsbury Press'), description: 'This is a short description. Lorem ipsum dolor sit amet, consectetur adipiscing elit.')
Product.create(name: 'Product 48', category: Category.find_by(name: 'English'), brand: Brand.find_by(name: 'Bloomsbury Press'), description: 'This is a short description. Lorem ipsum dolor sit amet, consectetur adipiscing elit.')
Product.create(name: 'Product 49', category: Category.find_by(name: 'Fiction'), brand: Brand.find_by(name: 'Penguin Books'), description: 'This is a short description. Lorem ipsum dolor sit amet, consectetur adipiscing elit.')
Product.create(name: 'Product 50', category: Category.find_by(name: 'Fiction'), brand: Brand.find_by(name: 'Penguin Books'), description: 'This is a short description. Lorem ipsum dolor sit amet, consectetur adipiscing elit.')
Product.create(name: 'Product 51', category: Category.find_by(name: 'Fiction'), brand: Brand.find_by(name: 'Penguin Books'), description: 'This is a short description. Lorem ipsum dolor sit amet, consectetur adipiscing elit.')
Product.create(name: 'Product 52', category: Category.find_by(name: 'Children & Young Adult'), brand: Brand.find_by(name: 'Marvel Comics'), description: 'This is a short description. Lorem ipsum dolor sit amet, consectetur adipiscing elit.')
Product.create(name: 'Product 53', category: Category.find_by(name: 'Children & Young Adult'), brand: Brand.find_by(name: 'Marvel Comics'), description: 'This is a short description. Lorem ipsum dolor sit amet, consectetur adipiscing elit.')
Product.create(name: 'Product 54', category: Category.find_by(name: 'Children & Young Adult'), brand: Brand.find_by(name: 'DC Comics'), description: 'This is a short description. Lorem ipsum dolor sit amet, consectetur adipiscing elit.')
Product.create(name: 'Product 55', category: Category.find_by(name: 'Competitive Books'), brand: Brand.find_by(name: 'Pearson Education'), description: 'This is a short description. Lorem ipsum dolor sit amet, consectetur adipiscing elit.')
Product.create(name: 'Product 56', category: Category.find_by(name: 'Competitive Books'), brand: Brand.find_by(name: 'Pearson Education'), description: 'This is a short description. Lorem ipsum dolor sit amet, consectetur adipiscing elit.')
Product.create(name: 'Product 57', category: Category.find_by(name: 'Competitive Books'), brand: Brand.find_by(name: 'Pearson Education'), description: 'This is a short description. Lorem ipsum dolor sit amet, consectetur adipiscing elit.')
Product.create(name: 'Product 58', category: Category.find_by(name: 'MP3 & Media Players'), brand: Brand.find_by(name: 'Apple'), description: 'This is a short description. Lorem ipsum dolor sit amet, consectetur adipiscing elit.')
Product.create(name: 'Product 59', category: Category.find_by(name: 'MP3 & Media Players'), brand: Brand.find_by(name: 'Apple'), description: 'This is a short description. Lorem ipsum dolor sit amet, consectetur adipiscing elit.')
Product.create(name: 'Product 60', category: Category.find_by(name: 'MP3 & Media Players'), brand: Brand.find_by(name: 'Apple'), description: 'This is a short description. Lorem ipsum dolor sit amet, consectetur adipiscing elit.')
Product.create(name: 'Product 61', category: Category.find_by(name: 'Camcorders'), brand: Brand.find_by(name: 'Sony'), description: 'This is a short description. Lorem ipsum dolor sit amet, consectetur adipiscing elit.')
Product.create(name: 'Product 62', category: Category.find_by(name: 'Camcorders'), brand: Brand.find_by(name: 'Sony'), description: 'This is a short description. Lorem ipsum dolor sit amet, consectetur adipiscing elit.')
Product.create(name: 'Product 63', category: Category.find_by(name: 'Camcorders'), brand: Brand.find_by(name: 'Sony'), description: 'This is a short description. Lorem ipsum dolor sit amet, consectetur adipiscing elit.')
Product.create(name: 'Product 64', category: Category.find_by(name: 'Speakers'), brand: Brand.find_by(name: 'Bose'), description: 'This is a short description. Lorem ipsum dolor sit amet, consectetur adipiscing elit.')
Product.create(name: 'Product 65', category: Category.find_by(name: 'Speakers'), brand: Brand.find_by(name: 'Bose'), description: 'This is a short description. Lorem ipsum dolor sit amet, consectetur adipiscing elit.')
Product.create(name: 'Product 66', category: Category.find_by(name: 'Speakers'), brand: Brand.find_by(name: 'Audio-Technica'), description: 'This is a short description. Lorem ipsum dolor sit amet, consectetur adipiscing elit.')
Product.create(name: 'Product 67', category: Category.find_by(name: 'Digital SLRs'), brand: Brand.find_by(name: 'Nikon'), description: 'This is a short description. Lorem ipsum dolor sit amet, consectetur adipiscing elit.')
Product.create(name: 'Product 68', category: Category.find_by(name: 'Digital SLRs'), brand: Brand.find_by(name: 'Nikon'), description: 'This is a short description. Lorem ipsum dolor sit amet, consectetur adipiscing elit.')
Product.create(name: 'Product 69', category: Category.find_by(name: 'Digital SLRs'), brand: Brand.find_by(name: 'Canon'), description: 'This is a short description. Lorem ipsum dolor sit amet, consectetur adipiscing elit.')
Product.create(name: 'Product 70', category: Category.find_by(name: 'International Music'), brand: Brand.find_by(name: 'Sony Music'), description: 'This is a short description. Lorem ipsum dolor sit amet, consectetur adipiscing elit.')
Product.create(name: 'Product 71', category: Category.find_by(name: 'International Music'), brand: Brand.find_by(name: 'Sony Music'), description: 'This is a short description. Lorem ipsum dolor sit amet, consectetur adipiscing elit.')
Product.create(name: 'Product 72', category: Category.find_by(name: 'International Music'), brand: Brand.find_by(name: 'Sony Music'), description: 'This is a short description. Lorem ipsum dolor sit amet, consectetur adipiscing elit.')
Product.create(name: 'Product 73', category: Category.find_by(name: 'PC Games'), brand: Brand.find_by(name: 'Rockstar Games'), description: 'This is a short description. Lorem ipsum dolor sit amet, consectetur adipiscing elit.')
Product.create(name: 'Product 74', category: Category.find_by(name: 'PC Games'), brand: Brand.find_by(name: 'Rockstar Games'), description: 'This is a short description. Lorem ipsum dolor sit amet, consectetur adipiscing elit.')
Product.create(name: 'Product 75', category: Category.find_by(name: 'PC Games'), brand: Brand.find_by(name: 'EA Games'), description: 'This is a short description. Lorem ipsum dolor sit amet, consectetur adipiscing elit.')
Product.create(name: 'Product 76', category: Category.find_by(name: 'Consoles'), brand: Brand.find_by(name: 'Sony PlayStation'), description: 'This is a short description. Lorem ipsum dolor sit amet, consectetur adipiscing elit.')
Product.create(name: 'Product 77', category: Category.find_by(name: 'Consoles'), brand: Brand.find_by(name: 'Microsoft XBOX'), description: 'This is a short description. Lorem ipsum dolor sit amet, consectetur adipiscing elit.')
Product.create(name: 'Product 78', category: Category.find_by(name: 'Consoles'), brand: Brand.find_by(name: 'Microsoft XBOX'), description: 'This is a short description. Lorem ipsum dolor sit amet, consectetur adipiscing elit.')
Product.create(name: 'Product 79', category: Category.find_by(name: 'Blu-ray'), brand: Brand.find_by(name: 'Universal'), description: 'This is a short description. Lorem ipsum dolor sit amet, consectetur adipiscing elit.')
Product.create(name: 'Product 80', category: Category.find_by(name: 'Blu-ray'), brand: Brand.find_by(name: 'Universal'), description: 'This is a short description. Lorem ipsum dolor sit amet, consectetur adipiscing elit.')
Product.create(name: 'Product 81', category: Category.find_by(name: 'Blu-ray'), brand: Brand.find_by(name: 'Universal'), description: 'This is a short description. Lorem ipsum dolor sit amet, consectetur adipiscing elit.')
Product.create(name: 'Product 82', category: Category.find_by(name: 'Dogs'), brand: Brand.find_by(name: 'Pedigree'), description: 'This is a short description. Lorem ipsum dolor sit amet, consectetur adipiscing elit.')
Product.create(name: 'Product 83', category: Category.find_by(name: 'Dogs'), brand: Brand.find_by(name: 'Pedigree'), description: 'This is a short description. Lorem ipsum dolor sit amet, consectetur adipiscing elit.')
Product.create(name: 'Product 84', category: Category.find_by(name: 'Dogs'), brand: Brand.find_by(name: 'Pedigree'), description: 'This is a short description. Lorem ipsum dolor sit amet, consectetur adipiscing elit.')
Product.create(name: 'Product 85', category: Category.find_by(name: 'Kitchen & Home Appliances'), brand: Brand.find_by(name: 'Morphy Richards'), description: 'This is a short description. Lorem ipsum dolor sit amet, consectetur adipiscing elit.')
Product.create(name: 'Product 86', category: Category.find_by(name: 'Kitchen & Home Appliances'), brand: Brand.find_by(name: 'Morphy Richards'), description: 'This is a short description. Lorem ipsum dolor sit amet, consectetur adipiscing elit.')
Product.create(name: 'Product 87', category: Category.find_by(name: 'Kitchen & Home Appliances'), brand: Brand.find_by(name: 'Havells'), description: 'This is a short description. Lorem ipsum dolor sit amet, consectetur adipiscing elit.')
Product.create(name: 'Product 88', category: Category.find_by(name: 'Home Improvement'), brand: Brand.find_by(name: 'Bosch'), description: 'This is a short description. Lorem ipsum dolor sit amet, consectetur adipiscing elit.')
Product.create(name: 'Product 89', category: Category.find_by(name: 'Home Improvement'), brand: Brand.find_by(name: 'Bosch'), description: 'This is a short description. Lorem ipsum dolor sit amet, consectetur adipiscing elit.')
Product.create(name: 'Product 90', category: Category.find_by(name: 'Home Improvement'), brand: Brand.find_by(name: 'Godrej'), description: 'This is a short description. Lorem ipsum dolor sit amet, consectetur adipiscing elit.')
Product.create(name: 'Product 91', category: Category.find_by(name: 'Furniture'), brand: Brand.find_by(name: 'Decor Nation'), description: 'This is a short description. Lorem ipsum dolor sit amet, consectetur adipiscing elit.')
Product.create(name: 'Product 92', category: Category.find_by(name: 'Furniture'), brand: Brand.find_by(name: 'Decor Nation'), description: 'This is a short description. Lorem ipsum dolor sit amet, consectetur adipiscing elit.')
Product.create(name: 'Product 93', category: Category.find_by(name: 'Furniture'), brand: Brand.find_by(name: 'Decor Nation'), description: 'This is a short description. Lorem ipsum dolor sit amet, consectetur adipiscing elit.')
Product.create(name: 'Classic Rock',
               category: Category.find_by(name: 'Classic Rock'),
               brand: Brand.find_by(name: 'Sony Music'),
               description: %(This is a short description.
                                  Lorem ipsum dolor sit amet,
                                  consectetur adipiscing elit.))

Product.create(name: 'Hard Rock',
               category: Category.find_by(name: 'Hard Rock'),
               brand: Brand.find_by(name: 'Island Records'),
               description: %(This is a short description.
                                  Lorem ipsum dolor sit amet,
                                  consectetur adipiscing elit.))