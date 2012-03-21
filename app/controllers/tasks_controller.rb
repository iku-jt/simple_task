class TasksController < ApplicationController
  respond_to :html, :json

  def index
    @tasks = Task.all
    respond_with @tasks
  end

  def show
    @task = Task.find(params[:id])
    respond_with @task
  end

  def new
    @task = Task.new
    respond_with @task
  end

  def edit
    @task = Task.find(params[:id])
    respond_with @task
  end

  def create
    @task = Task.new(params[:task])
    flash[:notice] = 'Task was successfully created.' if @task.save
    respond_with @task, location: tasks_path
  end

  def update
    @task = Task.find(params[:id])
    flash[:notice] = 'Task was successfully updated.' if @task.update_attributes(params[:task])
    respond_with @task, location: tasks_path
  end

  def destroy
    @task = Task.find(params[:id])
    @task.destroy
    flash[:notice] = 'Task was successfully destroyed.'
    respond_with @task
  end
end
