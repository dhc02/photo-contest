class EntriesController < ApplicationController
  def index
    @entries = Entry.all
  end
  
  def show
    @entry = Entry.find(params[:id])
  end
  
  def new
    @entry = Entry.new
  end
  
  def create
    @entry = Entry.new(params[:entry])
    if @entry.save
      flash[:notice] = "Successfully created entry."
      redirect_to @entry
    else
      render :action => 'new'
    end
  end
  
  def edit
    @entry = Entry.find(params[:id])
  end
  
  def update
    @entry = Entry.find(params[:id])
    if @entry.update_attributes(params[:entry])
      flash[:notice] = "Successfully updated entry."
      redirect_to @entry
    else
      render :action => 'edit'
    end
  end
  
  def destroy
    @entry = Entry.find(params[:id])
    @entry.destroy
    flash[:notice] = "Successfully destroyed entry."
    redirect_to entries_url
  end
  
  def vote
    @entry = Entry.find(params[:id])
    @robot = Robot.first
    session[:votes] = session[:votes] || {}
    unless session[:votes][@entry.id]
      @robot.vote_for(@entry)
      session[:votes][@entry.id] = 1
      flash[:notice] = "Succesfully voted for #{@entry.title}." 
    else
      flash[:notice] = "You've already voted for #{@entry.title} once."
    end
    redirect_to entries_url
  end
end
