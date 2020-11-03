require 'csv'

namespace :import_brand_csv do
  desc "ブランド名をブランドテーブルにインポート"
  task save_to_brand_table: :environment do 
    CSV.foreach('db/brand.csv', :headers => true) do |row| 

      unless row[0] =~ /\A[ァ-ヶー－]{1}\z/
        Brand.create!(
          name: row[0]
        ) 
      end

    end 
  end
end
