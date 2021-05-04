class Relationship < ApplicationRecord
  belongs_to :following, class_name: "User"
  belongs_to :folower, class_name: "User"
end
