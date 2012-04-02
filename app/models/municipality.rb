class Municipality < ActiveRecord::Base
  belongs_to :state
  has_many :contact
end
