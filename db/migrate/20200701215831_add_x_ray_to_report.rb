class AddXRayToReport < ActiveRecord::Migration[6.0]
  def change
    remove_reference :x_rays, :report, foreign_key: true
    add_reference :reports, :x_ray, foreign_key: true
    add_column :paitents, :serialnumber, :bigint
    remove_reference :x_rays, :paitent, null: false, foreign_key: true
    add_column :x_rays, :paitent_serialnumber, :bigint
    add_reference :x_rays, :technicians, foreign_key: true

  end
end
