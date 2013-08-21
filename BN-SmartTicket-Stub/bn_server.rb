require 'sinatra'
require 'jbuilder'
require 'json'
require './models/gig'
require './models/ticket'
require './models/user'
require './models/factories'


before do
   content_type 'application/json'
end

get '/api/gigs/:user_id' do
  
  g = FactoryGirl.build(:gig)
  
  Jbuilder.encode do |json|
    json.gig do
      json.gigId g.gig_id
      json.startAt g.start_at
      json.gigBegins g.artist_name
      json.artistImageUrl g.artist_image_url
      json.artistDescription g.artist_description
      json.artistUrl1 g.artist_url_1
      json.artistUrl2 g.artist_url_2
      json.venueName g.venue_name
      json.venueAddress g.venue_address
      json.venueContactNumber g.venue_contact_number
      json.venueDescription g.venue_description
      json.venueLatitude g.venue_latitude
      json.venueLongitude g.venue_longitude
      json.venueImageUrl g.venue_image_url
      json.venueMapImage_url g.venue_map_image_url
      json.wifiEssid g.wifi_essid
      json.wifiPassword g.wifi_password
      json.streamTitle g.stream_title
      json.streamUrl g.stream_url
      json.nextStreamAt g.next_stream_at
  end
end
end

get '/api/users/:user_id' do
  
  l = FactoryGirl.build(:user)
  
  Jbuilder.encode do |json|
    json.gig do
      json.userId l.user_id
      json.userName l.user_name
      json.userSurname l.user_surname
      json.userIsSamsung l.user_is_samsung
      json.userMobileContact l.user_mobile_contact
      json.userPassword l.user_password
  end
end
end


get '/api/tickets/:user_id' do
  
  t = FactoryGirl.build(:ticket)
  
  Jbuilder.encode do |json|
    json.gig do
      json.ticketId t.ticket_id
      json.ticketType t.ticket_type
      json.ticketTypeDetail t.ticket_type_detail
      json.isValid t.is_valid
  end
end
end