require 'csv'

namespace :import_item_csv do
  desc "アイテム名をアイテムテーブルにインポート"
  task save_to_item_table: :environment do 
    CSV.foreach('db/item.csv', :headers => true) do |row| 

        Item.create!(
          name: row[0]
        ) 

    end 
  end
end
