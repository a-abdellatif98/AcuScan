# frozen_string_literal: true

class AddXRaysToReports < ActiveRecord::Migration[6.0]
  def change
    add_reference :reports, :x_ray, null: false, foreign_key: true
  end
end
