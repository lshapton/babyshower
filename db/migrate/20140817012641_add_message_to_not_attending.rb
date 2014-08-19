class AddMessageToNotAttending < ActiveRecord::Migration
  def change
    add_column :not_attendings, :message, :string
  end
end
