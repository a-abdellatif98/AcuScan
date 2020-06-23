class AddPaitentsToReports < ActiveRecord::Migration[6.0]
  def change
    add_reference :reports, :paitent, null: false, foreign_key: true
  end
end
