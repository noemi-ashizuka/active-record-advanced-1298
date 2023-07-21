class Intern < ActiveRecord::Base
  belongs_to :doctor # gives me a reader and writer .doctor which updates the doctor_id in the db (always pass instances to this method)
end
