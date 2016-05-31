class AddProfileDetailsToUsers < ActiveRecord::Migration
  def change
    change_table :users do |t|
      ## Personal Details
      t.string :first_name
      t.string :last_name
      t.string :profile_picture
      t.string :gender
      t.string :work
      t.string :phone
      t.string :nationality
      t.string :languages
      t.string :hobbies
  end
  end
end
