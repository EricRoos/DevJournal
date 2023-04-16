class Project < ApplicationRecord
  belongs_to :user
  validates_presence_of :user, :title
end
