class AddReportsToVisits < ActiveRecord::Migration[6.0]
  def change
    add_reference :visits, :report, null: false, foreign_key: true
  end
end
