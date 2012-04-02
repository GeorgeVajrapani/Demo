class Contact < ActiveRecord::Base
  belongs_to :state
  belongs_to :municipality
  validates :name, :presence => true
end
