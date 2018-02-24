class CreateDamascusBases < ActiveRecord::Migration[5.0]
  def change
    create_table :damascus_bases do |t|

      t.timestamps
    end
  end
end
