class CreateTimeslots < ActiveRecord::Migration[5.0]
  def change
    create_table :timeslots do |t|
      t.string :title, default: ""
      t.boolean :visible, default: false, null: false

      t.timestamps
    end
  end
end
