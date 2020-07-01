class AddXRayToReport < ActiveRecord::Migration[6.0]
  def change
    remove_reference :x_rays, :report, foreign_key: true
    add_reference :reports, :x_ray, foreign_key: true
  end
end
