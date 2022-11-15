class TasksController < ApplicationController
  before_action :set_task, only: [:show, :edit, :update, :destroy]

  # See all tasks
  def index
    @tasks = Task.all
  end

  # See details about one task
  def show
  end
  # Create a task
  def create
    @task = Task.create(task_params)

    redirect_to tasks_path
  end
  def new
    @task = Task.new
  end
# Eit a task
  def update
  @task = Task.find(params[:id])
  @task.update(task_params)
  redirect_to tasks_path
  end
# Update a task
  def edit
  end
  # Destroy a task
  def destroy
    @task.destroy

    redirect_to tasks_path
  end

  private

  def task_params
    params.require(:task).permit(:title, :details, :completed)
  end

  def set_task
    @task = Task.find(params[:id])
  end
end
