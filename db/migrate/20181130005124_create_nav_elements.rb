class CreateNavElements < ActiveRecord::Migration[5.2]
  def change
    create_table :nav_elements do |t|

      t.timestamps
      t.string :name
      t.string :path
      t.string :idattrib
      
    end
  end
end
