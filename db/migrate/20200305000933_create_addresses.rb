class CreateAddresses < ActiveRecord::Migration[5.2]
  def change
    create_table :addresses do |t|
      t.references :addressable, polymorphic: true
      t.numeric :number
      t.string :street
      t.string :suburb
      t.string :city
      t.string :state
      t.numeric :postcode
      t.string :country

      t.timestamps
    end
  end
end
