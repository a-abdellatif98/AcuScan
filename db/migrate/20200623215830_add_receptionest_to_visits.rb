class AddReceptionestToVisits < ActiveRecord::Migration[6.0]
  def change
    add_reference :visits, :receptionest, null: false, foreign_key: true
  end
end
