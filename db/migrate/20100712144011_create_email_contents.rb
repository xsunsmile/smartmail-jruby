class CreateEmailContents < ActiveRecord::Migration
  def self.up
    create_table :email_contents do |t|
      t.string :subject
      t.string :email_to
      t.string :email_from
      t.string :email_cc
      t.text :body
      t.text :quotation

      t.timestamps
    end
  end

  def self.down
    drop_table :email_contents
  end
end
