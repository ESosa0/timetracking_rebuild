class EntriesController < ApplicationController
  def index
    @project = Project.find params[:id]
    @entries = @project.entries
  rescue ActiveRecord::RecordNotFound 
    render 'no_entries_found'
  end
end
