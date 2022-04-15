# frozen_string_literal: true

class CreateOauthStripeAccounts < ActiveRecord::Migration[7.0]
  def change
    create_table :oauth_stripe_accounts do |t|
      t.string :uid, unique: true
      t.json :data
      t.references :user, null: true, foreign_key: true

      t.timestamps
    end
  end
end
