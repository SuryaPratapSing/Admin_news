class CreateAdmins < ActiveRecord::Migration[7.0]
  def change
    create_table :admins do |t|
      t.string :CATEGORY
      t.string :CITY
      t.string :AUTHOR
      t.text :TITLE
      t.text :DISCRIPTION
      
      

      t.timestamps
    end
  end
end
