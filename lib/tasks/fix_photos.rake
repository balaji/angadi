namespace :util do
  task rename_images: :environment do
    require 'pathname'
    directory = Pathname(File.expand_path('resized'))
    files = Dir.glob "#{directory}/*.jpg"

    count = Product.count
    products = Product.all
    files.take(count).zip(products).each do |x|
      file_name = x[0]
      product = x[1]
      File.rename(file_name, "#{product.image_id}_300.jpg")
    end
  end
end