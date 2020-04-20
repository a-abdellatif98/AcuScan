class CreatePaitents < ActiveRecord::Migration[6.0]
  def change
    create_table :paitents do |t|
      t.string :name
      t.string :adress
      t.bigint :National_id
      t.integer :visits_id
      t.integer :mobile
      t.string :gender
      t.date :dob

      t.timestamps
    end
  end
end
