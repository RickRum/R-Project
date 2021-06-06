class CreateImgalleries < ActiveRecord::Migration[6.1]
  def change
    create_table :imgalleries do |t|
      t.string :userName

      t.timestamps
    end
  end
end
