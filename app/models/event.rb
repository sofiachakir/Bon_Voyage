class Event < ApplicationRecord
  belongs_to :trip, optional: true #Pour pouvoir copier un évènement
  has_many :notes, dependent: :destroy

  geocoded_by :city_name
  after_validation :geocode, if: :will_save_change_to_city_name?

  validate :start_time_must_be_before_end_time

  def initialize_dup(original_event)
    # Cette méthode permet de copier un event et ses notes. Pour l'enregistrer,
    # il faut lui ajouter un trip_id, un start_time et un end_time
    # Puis event.save va l'enregistrer en bdd avec ses notes !

    super
    # Copie les notes sans leur id
    original_event.notes.each do |note|
      self.notes.push note.dup
    end

    #start_time : to change
    self.start_time = nil
    #end_time : to change
    self.end_time = nil
    #comment : to change
    self.comment = nil
    #trip id : to change
    self.trip_id = nil
    
  end

  def start_time_must_be_before_end_time
  	unless self.start_time.nil? || self.end_time.nil?
	    if self.end_time < self.start_time
	      errors.add(:end_time, "must be posterior to start_time")
	    end
	  end
  end

  def self.with_comments
    events = []
    Event.all.each do |event|
      if event.comment != "" && event.comment != " " && event.comment != nil
        events << event
      end
    end
    return events.sample(2) 
  end

end
