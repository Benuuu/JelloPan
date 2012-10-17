class Event < ActiveRecord::Base
  attr_accessible :album, :event_date, :host, :ingredient
  
  default_scope order: 'event_date DESC'
end
