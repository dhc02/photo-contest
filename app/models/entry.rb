class Entry < ActiveRecord::Base
  
  has_attached_file :photo, :styles => { :large => "800x800>", :thumb => "150x150>" }
  acts_as_voteable
  
end
