class Spree::Customer < ApplicationRecord
  belongs_to :user, class_name: Spree::User.new
  has_many :sources, class_name: "Spree::Source", inverse_of: :customer
end
