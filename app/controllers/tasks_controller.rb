class TasksController < ApplicationController

before_action :set_task, only: [:show, :edit, :update, :destroy]

  def index
    @tasks = Task.all
  end

  def new
    @task = Task.new
  end

  def create
    @task = Task.new(tasks_params)
    @task.save
    redirect_to index_path
  end

  def show
  end

  def edit
  end

  def update
    @task.update(params[:task])
  end

  def destroy
    @task.destroy
    redirect_to index_path
  end

  private

  def tasks_params
    params.require(:task).permit(:title, :details, :completed)
  end

  def set_task
    @task = Task.find(params[:id])
  end

end
