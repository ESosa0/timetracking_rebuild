class EntriesController < ApplicationController
  def index
    @project = Project.find params[:project_id]
    @entries = @project.entries
    @total = Entry.calculate_hours(@project)
  rescue ActiveRecord::RecordNotFound 
    render 'no_entries_found'
  end
end
