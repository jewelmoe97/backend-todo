class Mycategory < ActiveRecord::Base
    has_many :mylists
    has_many :my_shoppings
end