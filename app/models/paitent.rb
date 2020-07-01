# frozen_string_literal: true

class Paitent < ApplicationRecord
  #has_many :visits
  has_many :reports
  has_many :x_rays

end
