class Car < ApplicationRecord
  belongs_to :manifacturer

  enum :power_type, %i[disel petrol eletric hybrid]
end
