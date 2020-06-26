# frozen_string_literal: true

class XRay < ApplicationRecord


    has_many :reports through: :serialnumber
    has_one_attached :images
end
