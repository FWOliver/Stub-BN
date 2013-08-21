class User
	attr_accessor :user_id, :user_name, :user_surname, :user_is_samsung, :user_mobile_contact, :user_password
	
	def gigs
    @gigs ||= []
  end
  
  def save!
    
  end
end
