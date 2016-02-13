class EntriesController < ApplicationController
  def index
    @project = Project.find params[:project_id]
    @entries = @project.entries
  
    @total = Entry.calculate_hours(@project)
  rescue ActiveRecord::RecordNotFound 
    render 'no_entries_found'
  end
  def new
    @project = Project.find params[:project_id]
    @entry = @project.entries.new
  end
  def create
   @project = Project.find params[:project_id]
   @entry = @project.entries.new entry_params
     if @entry.save
      redirect_to action: 'index', controller: 'entries', project_id: @project.id
     else
      @errors = @entry.errors.full_messages
      render "new"
    end
  end

  private

  def entry_params
    params.require(:entry).permit(:hours, :minutes, :date)
  end

end
