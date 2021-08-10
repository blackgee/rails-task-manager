class TasksController < ApplicationController

  def index
  @tasks = Task.all
  end

  def show
    @task = Task.find(params[:id])
  end

  def new
    @task = Task.new
  end

  def create
    @task = Task.new(params.require(:task).permit(:title, :details))

    @task.save

    redirect_to task_path(@task)
  end

  #  # STRONG PARAMS
  # def task_params
  #   params.require(:task).permit(:title, :details)
  # end

  # def set_task
  #   @task = Task.find(params[:id])
  # end

end
