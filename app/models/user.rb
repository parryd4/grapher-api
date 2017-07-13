class User < ApplicationRecord
  has_secure_password
  has_many :data_sets
  has_many :custom_charts, through: :data_sets
end

# JWT can wait ...
