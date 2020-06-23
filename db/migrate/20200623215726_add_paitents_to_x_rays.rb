class AddPaitentsToXRays < ActiveRecord::Migration[6.0]
  def change
    add_reference :x_rays, :paitent, null: false, foreign_key: true
  end
end
