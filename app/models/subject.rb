class Subject < ApplicationRecord
    # has_many :pages 
    has_one :page 

    scope :visible, lambda { where(:visible => true)}
    scope :invisible, lambda {where(:visible => false)}
    scope :sorted, lambda {order("postition DESC")}
    scope :search, lambda {|query| where(["name LIKE ?","%#{query}%"])}
end
