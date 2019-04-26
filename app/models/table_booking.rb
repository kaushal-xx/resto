class TableBooking < ApplicationRecord
  before_create :set_time_stamps
  before_save :set_time_stamps

	private
	  def set_time_stamps
	    self.create_time = DateTime.now if self.new_record?
	    self.modified_time = DateTime.now
	  end
end
