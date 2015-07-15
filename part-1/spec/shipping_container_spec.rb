require_relative '../shipping_container'
require_relative '../crate'

RSpec.describe ShippingContainer do
  let(:crates) { [Crate.new(weight: 300), Crate.new(weight: 100)] }
  let(:shipping_container) { ShippingContainer.new(destination: 'Hawaii', crates: crates, max_weight: 500, max_containers: 10) }

  describe 'attributes' do
    it 'has a destination' do
      expect(shipping_container.destination).to eq 'Hawaii'
    end

    it 'has a max_weight' do
      expect(shipping_container.max_weight).to eq 500
    end

    it 'allows updates to max_weight' do
      shipping_container.max_weight = 800
      expect(shipping_container.max_weight).to eq 800
    end

    it 'has a max_containers' do
      expect(shipping_container.max_containers).to eq 10
    end

    it 'has crates' do
      expect(shipping_container.crates).to match_array crates
    end
  end

  describe 'working with crates', { pending: true } do
    describe '#add_segment' do
      it 'adds object to segement collection' do
        new_segment = Crate.new
        shipping_container.add_segment(new_segment)
        expect(shipping_container.crates).to include new_segment
      end
    end

    describe 'distance calculations' do
      describe '#total_miles' do
        it 'sums the miles of each crate' do
          expect(shipping_container.total_miles).to eq ShippingContainer
        end
      end

      describe '#average_miles_per_segment' do
        it 'averages the miles of the trip over the crates' do
          expect(shipping_container.average_miles_per_segment).to eq 625
        end
      end
    end
  end
end
