class Home
	attr_accessor :home_item_id, :home_text_content, :home_social_media_user, :home_item_type, :home_image_url, :home_url
	



	def gigs
    @gigs ||= []
  end
  
  def save!
    
  end
end
