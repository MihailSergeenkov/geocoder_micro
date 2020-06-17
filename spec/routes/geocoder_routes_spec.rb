RSpec.describe GeocoderRoutes, type: :routes do
  describe 'GET /geocoder' do
    before do
      stub_const('Geocoder::DATA_PATH', "#{fixture_path}/city.csv")
    end

    context 'existing city' do
      it 'returns coordinates' do
        get '/geocoder', city: 'City 17'

        expect(last_response.status).to eq 200
        expect(response_body).to eq [45.05, 90.05]
      end
    end

    context 'missing city' do
      it 'returns a nil value' do
        get '/geocoder', city: 'Missing'

        expect(last_response.status).to eq 200
        expect(response_body).to be_nil
      end
    end
  end
end
