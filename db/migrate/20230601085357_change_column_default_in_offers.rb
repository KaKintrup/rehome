class ChangeColumnDefaultInOffers < ActiveRecord::Migration[7.0]
  def change
    change_column_default :offers, :offer_status, false
  end
end
