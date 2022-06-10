# frozen_string_literal: true

# Handles managing tasks
#
class TasksController < ApplicationController
  before_action :set_task, only: %i[edit update destroy toggle]

  #
  # GET /
  #
  def index
    @tasks = Task.all
    @task = Task.new
  end

  # POST /tasks
  #
  def create
    @task = Task.new(task_params)

    respond_to do |format|
      if @task.save
        format.html do
          redirect_to tasks_url, notice: 'Task was successfully created'
        end
      else
        format.html { render :new, status: :unprocessable_entity }
      end
    end
  end

  # GET /tasks/:id
  #
  def edit; end

  # PUT/PATCH /tasks/:id
  #
  def update
    respond_to do |format|
      if @task.update(task_params)
        format.html do
          redirect_to tasks_url, notice: 'Task was successfully updated'
        end
      else
        format.html { render :edit, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tasks/:id
  #
  def destroy
    @task.destroy
    redirect_to tasks_url, notice: 'Post was successfully deleted.'
  end

  # POST tasks/:id/toggle
  #
  def toggle
    @task.update(completed: params[:completed])

    render json: { message: 'Success' }
  end

  private

  def task_params
    params.require(:task).permit(:description)
  end

  def set_task
    @task = Task.find(params[:id])
  end
end
