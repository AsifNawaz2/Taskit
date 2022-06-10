# frozen_string_literal: true

# Handles managing tasks
#
class TasksController < ApplicationController
  #
  # GET /
  #
  def index
    @tasks = Task.all
  end
end
