class Entry < ActiveRecord::Base
  belongs_to :project
  validates :hours, presence: true, numericality: true 
  validates :minutes, presence: true, numericality: true
  validates :date, presence: true
  validates :project, presence: true
   def self.calculate_hours(project)
    @entries = project.entries.where("created_at > ?", 1.month.ago)
    total = 0
    @entries.each do |entry|
      total += entry.hours*60 + entry.minutes
    end
    @total = (total/60.0).round(2)
  end
end
