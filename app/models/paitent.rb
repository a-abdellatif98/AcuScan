# frozen_string_literal: true

class Paitent < ApplicationRecord
  has_many :x_rays  through: :serialnumber
  self.primary_key = 'serialnumber'

end
