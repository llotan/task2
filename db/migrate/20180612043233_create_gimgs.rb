class CreateGimgs < ActiveRecord::Migration[5.2]
  def change
    create_table :gimgs do |t|
      t.string :link
      t.integer :good_id

      t.timestamps
    end
    add_index  :gimgs, [ :good_id, :created_at ]
  end
end
