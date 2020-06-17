require_relative 'config/environment'

map '/v1' do
  run GeocoderRoutes
end
