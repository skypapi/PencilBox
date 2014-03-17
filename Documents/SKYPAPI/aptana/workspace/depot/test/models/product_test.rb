require 'test_helper'

class ProductTest < ActiveSupport::TestCase
    fixtures :products
    
    def new_product(image_url)
        Product.new(title: "My new product1",
                            description: "111111",
                            price: 1,
                            image_url: "1111.jpg")
    end
    
# Tests below*****************************************************   

    test "image url" do
        ok = %w{fred.gif fred.jpg fred.png FRED.JPG FRED.Jpg http://a.b.c/x/y/z/fred.gif}
        bad = %w{fred.doc fred.gif/more fred.gif.more}
        
        ok.each do |name|
            assert new_product(name).valid?, "#{name} should be valid"
        end    
        
        bad.each do |name|
            assert new_product(name).invalid?, "#{name} is not valid"
        end
    end 
    
    test "product attributes must not be empty" do
        product = Product.new
        assert product.invalid?
        assert product.errors[:title].any?
        assert product.errors[:description].any?
        assert product.errors[:price].any?
        assert product.errors[:image_url].any?
    end
  
  # test "product price must be positive" do
      # product = Product.new(title: "My new product1",
                            # description: "111111",
                            # image_url: "1111.jpg")
        # product.price = -1
        # assert product.invalid?
        # assert_equal ["must be greater than or equal tp 0.01"], product.errors[:price]
#         
        # product.price = 0
        # assert product.invalid?
        # assert_equal ["must be greater than or equal tp 0.01"], product.errors[:price]
# 
        # product.price = 1
        # assert product.valid?
#                                             
  # end
end
