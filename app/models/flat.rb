class Flat < ApplicationRecord
  def self.search(search)
    if search.present?
      where('name LIKE ?', "%#{search}%")
    else
      where('1=1')
    end
  end
end
