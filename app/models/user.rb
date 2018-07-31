class User < ApplicationRecord
  belongs_to :manager, optional: true
end
