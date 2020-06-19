# frozen_string_literal: true

class Paitent < ApplicationRecord
  has_many :visits
  has_many :reports
  has_many :x_rays

  after_initialize :serialnumber=

  private

  def serialnumber=(value = Time.new.to_i)
    self[:serialnumber] = value
  end

  def serialnumber
    serialnumber(:serialnumber) || Time.new.to_i
  end
end
