class Gig
	attr_accessor :gig_id, :start_at
  attr_accessor :artist_name, :artist_image_url, :artist_description, :artist_url_1, :artist_url_2
  attr_accessor :venue_name, :venue_address, :venue_contact_number, :venue_description, :venue_disable_access_description, :venue_latitude, :venue_longitude, :venue_image_url, :venue_map_image_url
  attr_accessor :wifi_essid, :wifi_password
  attr_accessor :stream_title, :stream_url, :next_stream_at
  
  def user=(_user)
    @user = _user
    @user.gigs << self
  end

  def save!
    
  end
end
