class Entry < ActiveRecord::Base
  belongs_to :project
   def self.calculate_hours(id)
    @project = Project.find(id)
   
    @entries = @project.entries.where("created_at > ?", Date.today.midnight - 1.month)
    total = 0
    @entries.each do |entry|
      total += entry.hours*60 + entry.minutes
    end
    @total = (total/60.0).round(2)
  end
end
