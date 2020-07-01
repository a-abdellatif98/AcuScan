# frozen_string_literal: true

class AddDoctorsToReports < ActiveRecord::Migration[6.0]
  def change
    add_reference :reports, :doctor, null: false, foreign_key: true
  end
end
