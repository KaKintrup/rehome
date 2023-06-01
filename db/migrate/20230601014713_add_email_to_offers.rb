class AddEmailToOffers < ActiveRecord::Migration[7.0]
  def change
    add_column :offers, :email, :string
  end
end
