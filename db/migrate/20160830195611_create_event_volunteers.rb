class CreateEventVolunteers < ActiveRecord::Migration[5.0]
  def change
    create_table :event_volunteers do |t|
      t.references :user, foreign_key: true
      t.references :event_slot_user, foreign_key: true
      t.text :notes

      t.timestamps
    end
  end
end
