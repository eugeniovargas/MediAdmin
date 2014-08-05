class AddImagesToUsers < ActiveRecord::Migration
  def change
    def self.up
      add_attachment :users, :image
    end

    def self.down
      remove_attachment :users, :image
    end
  end
end