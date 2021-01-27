class CreatePrototypes < ActiveRecord::Migration[6.0]
  def change
    create_table :prototypes do |t|

      t.title :title
      t.text   :catch_copy
      t.text   :concept
      t.string :user_id
      t.timestamps
    end
  end
end