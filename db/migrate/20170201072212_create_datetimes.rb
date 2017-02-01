class CreateDatetimes < ActiveRecord::Migration
  def change
    create_table :datetimes do |t|
      t.string :name
      t.string :lastname
      t.date :startdate
      t.date :enddate

      t.timestamps null: false
    end
  end
end
