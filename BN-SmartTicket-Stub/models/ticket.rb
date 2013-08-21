class Ticket
	attr_accessor :ticket_id, :ticket_type, :ticket_type_detail, :is_valid
	
	def gigs
    @gigs ||= []
  end
  
  def save!
    
  end
end
