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
               description: %(This is a short description. Lorem ipsum dolor sit amet, consectetur adipiscing elit.))

Product.create(name: 'Hard Rock',
               category: Category.find_by(name: 'Hard Rock'),
               brand: Brand.find_by(name: 'Island Records'),
               description: %(This is a short description. Lorem ipsum dolor sit amet, consectetur adipiscing elit.))

Campaign.create(name: 'Summer Special',
                target_url: '#',
                image_id: 'sale_1',
                end_time: 1.year.from_now)

Campaign.create(name: 'Clearance Sale',
                target_url: '#',
                image_id: 'sale_2',
                end_time: 1.year.from_now)

Campaign.create(name: 'Winter Sale',
                target_url: '#',
                image_id: 'sale_3',
                end_time: 1.year.from_now)


random = Random.new
Product.find_each do |product|
  product.base_price = random.rand(10.00..1000.00).round(2)
  product.save
end

Product.update(Product.find_by(name: "Product 37").id, { image_id: "e30134089f3c" })
Product.update(Product.find_by(name: "Product 53").id, { image_id: "88dbe544b140" })
Product.update(Product.find_by(name: "Product 15").id, { image_id: "655d7d3f6f20" })
Product.update(Product.find_by(name: "Product 13").id, { image_id: "20bb11c26536" })
Product.update(Product.find_by(name: "Product 59").id, { image_id: "f5b780a0f6b4" })
Product.update(Product.find_by(name: "Product 5").id, { image_id: "cf0fcc1d49f0" })
Product.update(Product.find_by(name: "Product 69").id, { image_id: "ba9baf7bd0db" })
Product.update(Product.find_by(name: "Product 26").id, { image_id: "d2dfaf64761f" })
Product.update(Product.find_by(name: "Product 29").id, { image_id: "ee73d48e521b" })
Product.update(Product.find_by(name: "Product 38").id, { image_id: "d40c3c8c24bc" })
Product.update(Product.find_by(name: "Product 90").id, { image_id: "204b7c91a4e1" })
Product.update(Product.find_by(name: "Product 28").id, { image_id: "f515f8c3c6bd" })
Product.update(Product.find_by(name: "Product 7").id, { image_id: "30487d575207" })
Product.update(Product.find_by(name: "Product 42").id, { image_id: "4ab03785dc09" })
Product.update(Product.find_by(name: "Product 92").id, { image_id: "47c9e150e4be" })
Product.update(Product.find_by(name: "Product 55").id, { image_id: "a1cb381b3025" })
Product.update(Product.find_by(name: "Product 48").id, { image_id: "69b21f7c382d" })
Product.update(Product.find_by(name: "Product 35").id, { image_id: "ef8ea0b32763" })
Product.update(Product.find_by(name: "Product 36").id, { image_id: "b4a39c8c906c" })
Product.update(Product.find_by(name: "Product 88").id, { image_id: "af0753539a8a" })
Product.update(Product.find_by(name: "Product 45").id, { image_id: "eed802f3d485" })
Product.update(Product.find_by(name: "Product 77").id, { image_id: "2128b484ce7d" })
Product.update(Product.find_by(name: "Product 30").id, { image_id: "4779613729a0" })
Product.update(Product.find_by(name: "Product 84").id, { image_id: "679a69277ba2" })
Product.update(Product.find_by(name: "Product 32").id, { image_id: "45c0277f59cb" })
Product.update(Product.find_by(name: "Product 57").id, { image_id: "835ebd4b4a59" })
Product.update(Product.find_by(name: "Product 91").id, { image_id: "d6fbbcd8b610" })
Product.update(Product.find_by(name: "Product 12").id, { image_id: "d5882b363d07" })
Product.update(Product.find_by(name: "Product 17").id, { image_id: "ade6bd668cd3" })
Product.update(Product.find_by(name: "Product 25").id, { image_id: "b487cc6f2a0f" })
Product.update(Product.find_by(name: "Product 58").id, { image_id: "8f2b3aade325" })
Product.update(Product.find_by(name: "Product 86").id, { image_id: "8cd8bd6482d0" })
Product.update(Product.find_by(name: "Hard Rock").id, { image_id: "0d8c162c1ca4" })
Product.update(Product.find_by(name: "Product 64").id, { image_id: "2a52805ecf39" })
Product.update(Product.find_by(name: "Product 49").id, { image_id: "6d654d35cd42" })
Product.update(Product.find_by(name: "Product 43").id, { image_id: "2c923aea6d02" })
Product.update(Product.find_by(name: "Product 54").id, { image_id: "b1710bd1c07c" })
Product.update(Product.find_by(name: "Product 1").id, { image_id: "a89800da2a45" })
Product.update(Product.find_by(name: "Product 24").id, { image_id: "e46941e81778" })
Product.update(Product.find_by(name: "Product 72").id, { image_id: "b130b6a1a51d" })
Product.update(Product.find_by(name: "Product 46").id, { image_id: "021fb5d1f651" })
Product.update(Product.find_by(name: "Product 40").id, { image_id: "386762f40118" })
Product.update(Product.find_by(name: "Product 47").id, { image_id: "a55e8bf585d6" })
Product.update(Product.find_by(name: "Product 14").id, { image_id: "950542242a93" })
Product.update(Product.find_by(name: "Product 76").id, { image_id: "f5d231377ada" })
Product.update(Product.find_by(name: "Product 62").id, { image_id: "40caa7654c25" })
Product.update(Product.find_by(name: "Product 70").id, { image_id: "968009d2ab9a" })
Product.update(Product.find_by(name: "Product 11").id, { image_id: "cf27096e30d2" })
Product.update(Product.find_by(name: "Product 33").id, { image_id: "9105b1f3edca" })
Product.update(Product.find_by(name: "Product 93").id, { image_id: "856b50aefef4" })
Product.update(Product.find_by(name: "Product 18").id, { image_id: "25d682924782" })
Product.update(Product.find_by(name: "Product 31").id, { image_id: "145289d30fe7" })
Product.update(Product.find_by(name: "Product 79").id, { image_id: "890184beb1fc" })
Product.update(Product.find_by(name: "Product 68").id, { image_id: "831f2fe148dc" })
Product.update(Product.find_by(name: "Product 6").id, { image_id: "d92d3410e33f" })
Product.update(Product.find_by(name: "Product 10").id, { image_id: "8d1e5b0164f5" })
Product.update(Product.find_by(name: "Product 51").id, { image_id: "182ed07048b0" })
Product.update(Product.find_by(name: "Product 78").id, { image_id: "49456b610d0f" })
Product.update(Product.find_by(name: "Product 22").id, { image_id: "301db890da1b" })
Product.update(Product.find_by(name: "Product 56").id, { image_id: "db33222007bd" })
Product.update(Product.find_by(name: "Product 63").id, { image_id: "0b37c5f2a3e2" })
Product.update(Product.find_by(name: "Product 20").id, { image_id: "ee9d3d5a3a76" })
Product.update(Product.find_by(name: "Product 52").id, { image_id: "1c8a5ec0695a" })
Product.update(Product.find_by(name: "Product 19").id, { image_id: "9e2ba0ac6bd0" })
Product.update(Product.find_by(name: "Product 66").id, { image_id: "5a6e5854f858" })
Product.update(Product.find_by(name: "Product 39").id, { image_id: "0dd58c62c23d" })
Product.update(Product.find_by(name: "Product 9").id, { image_id: "e0c9b354fd5c" })
Product.update(Product.find_by(name: "Product 4").id, { image_id: "d74337be8576" })
Product.update(Product.find_by(name: "Product 83").id, { image_id: "8bd8bce074d6" })
Product.update(Product.find_by(name: "Product 61").id, { image_id: "0912438dcb98" })
Product.update(Product.find_by(name: "Product 16").id, { image_id: "d8786f89cf4c" })
Product.update(Product.find_by(name: "Product 27").id, { image_id: "02acd0a9e62a" })
Product.update(Product.find_by(name: "Product 3").id, { image_id: "d293307a925a" })
Product.update(Product.find_by(name: "Product 71").id, { image_id: "6ead88f5c08e" })
Product.update(Product.find_by(name: "Product 65").id, { image_id: "375e83dbc14a" })
Product.update(Product.find_by(name: "Product 87").id, { image_id: "6dc823ef610c" })
Product.update(Product.find_by(name: "Product 2").id, { image_id: "6c90673f38ed" })
Product.update(Product.find_by(name: "Product 41").id, { image_id: "b784ff72ba15" })
Product.update(Product.find_by(name: "Product 44").id, { image_id: "6408fb8bb116" })
Product.update(Product.find_by(name: "Product 8").id, { image_id: "09395935fc0f" })
Product.update(Product.find_by(name: "Product 75").id, { image_id: "1629a6258fbc" })
Product.update(Product.find_by(name: "Product 67").id, { image_id: "402912d14ce2" })
Product.update(Product.find_by(name: "Product 21").id, { image_id: "a0b6d6f97de4" })
Product.update(Product.find_by(name: "Product 81").id, { image_id: "2bc54db5a8ef" })
Product.update(Product.find_by(name: "Product 74").id, { image_id: "dce173488b30" })
Product.update(Product.find_by(name: "Product 34").id, { image_id: "58c891f17e4c" })
Product.update(Product.find_by(name: "Product 85").id, { image_id: "e4f7cd467520" })
Product.update(Product.find_by(name: "Product 89").id, { image_id: "903c04a38cb6" })
Product.update(Product.find_by(name: "Product 73").id, { image_id: "032adb814563" })
Product.update(Product.find_by(name: "Product 50").id, { image_id: "1cc3104df048" })
Product.update(Product.find_by(name: "Product 23").id, { image_id: "c9a6eee7b8ef" })
Product.update(Product.find_by(name: "Classic Rock").id, { image_id: "9f03434da18d" })
Product.update(Product.find_by(name: "Product 80").id, { image_id: "07599b912329" })
Product.update(Product.find_by(name: "Product 60").id, { image_id: "0867d5672838" })
Product.update(Product.find_by(name: "Product 82").id, { image_id: "2a3defcdefb1" })