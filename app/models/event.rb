class Event < ActiveRecord::Base
  default_scope { order(event_date: :desc) }
end
