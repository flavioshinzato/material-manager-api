class SportsMaterial < ApplicationRecord

  scope :search, -> (value) { where('sports_materials.name LIKE :param OR sports_materials.description LIKE :param', param: "%#{value}%") }

end
