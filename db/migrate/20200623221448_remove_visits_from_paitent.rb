class RemoveVisitsFromPaitent < ActiveRecord::Migration[6.0]
  def change
    remove_reference :paitents, :visit, null: false, foreign_key: true
  end
end
