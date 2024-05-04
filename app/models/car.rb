class Car < ApplicationRecord
  belongs_to :manifacturer

  enum :power_type, %i[disel petrol eletric hybrid]
  enum emission_standard: %w[euro6 lev ulev zev].index_by(&:itself)
end
