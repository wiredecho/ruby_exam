class Group < ActiveRecord::Base
  belongs_to :user

  validates :group_name, :presence => true
  validates :description, :presence =>true
end
