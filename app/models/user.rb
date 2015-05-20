class User
  include Mongoid::Document

  embeds_many :devices
  accepts_nested_attributes_for :devices
end
