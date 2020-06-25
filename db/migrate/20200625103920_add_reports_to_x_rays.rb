class AddReportsToXRays < ActiveRecord::Migration[6.0]
  def change
    add_reference :x_rays, :report, null: false, foreign_key: true
  end
end
