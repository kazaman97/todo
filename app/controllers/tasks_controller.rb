class TasksController < ApplicationController
  before_action :authenticate_user!
  def index
    @tasks = Task.all
    @task = Task.new
  end

  def create
    @task = Task.new(task_params)
    @task.save
    redirect_to tasks_path
  end

  def edit
    @task = Task.find(params[:id])
  end

  def update
    @task = Task.find(params[:id])
    @task.update(task_params)
    redirect_to "/tasks"
  end

  def destroy
    @task = Task.find(params[:id])
    @task.destroy
    redirect_to "/tasks"
  end

  def comprited
    @task = Task.find(params[:id])
    @task.update(comprited: true)
    redirect_to :root
  end

  def not_comprited
    @task = Task.find(params[:id])
    @task.update(comprited: false)
    redirect_to :root
  end

  private
  def task_params
    params.require(:task).permit(:name, :description,:comprited,:date)
  end
end
