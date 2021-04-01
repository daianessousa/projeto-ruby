require 'rails_helper'

RSpec.describe Restaurant do
    it {should have_many(:products)}

    context 'testing total of products' do
        it 'returns total of products for a specific restaurant' do 
            restaurant = FactoryBot.create(:restaurant)

            product1 = FactoryBot.create(:product, restaurant: restaurant)
            product2 = FactoryBot.create(:product, restaurant: restaurant)
            product3 = FactoryBot.create(:product, restaurant: restaurant)

            expect(restaurant.total_of_products).to eq 3
        end
    end
end
