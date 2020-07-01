# frozen_string_literal: true

class RemoveXRaysFromReports < ActiveRecord::Migration[6.0]
  def change
    remove_column :reports, :x_ray_id
  end
end
