class GeocoderRoutes < Application
  namespace '/geocoder' do
    get do
      geocoder_params = validate_with!(GeocoderParamsContract)
      data = Geocoder.geocode(geocoder_params[:city])

      json data
    end
  end
end
