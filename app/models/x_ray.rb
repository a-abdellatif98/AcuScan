# frozen_string_literal: true

class XRay < ApplicationRecord
  has_many :reports
  has_one_attached :image

  after_create :diagnose

  def diagnose
    DiagnoseXRayJob.perform_later(self)
  end

end
