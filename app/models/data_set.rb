class DataSet < ApplicationRecord
  serialize :content
  belongs_to :user
end
