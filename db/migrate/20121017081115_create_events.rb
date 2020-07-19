class CreateEvents < ActiveRecord::Migration[4.2]
  def change
    create_table :events do |t|
      t.string :host
      t.date :event_date
      t.string :album
      t.string :ingredient

      t.timestamps
    end
  end
end
