class DataSet < ApplicationRecord
  serialize :content
  belongs_to :user
  has_many :custom_charts
end
