class AddVisitsToPaitent < ActiveRecord::Migration[6.0]
  def change
    add_reference :paitents, :visit, null: false, foreign_key: true
  end
end
