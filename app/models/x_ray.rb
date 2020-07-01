# frozen_string_literal: true

class XRay < ApplicationRecord
    has_many :reports
    has_one_attached :image
end
