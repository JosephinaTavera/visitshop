class Shop < ApplicationRecord
	geocoded_by :full_address
	after_validation :geocode, :if=> :full_address_changed?
end