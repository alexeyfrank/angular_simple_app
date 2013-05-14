class Api::V1::TodosController < Api::V1::ApplicationController
  def index
    @todos = Todo.ransack(params).result
    respond_with @todos
  end

  def create
    @todo = Todo.new params[:todo]
    if @todo.save
      render json: @todo, status: 200
    else
      render json: @todo, status: 422
    end
  end

  def update
    @todo = Todo.find params[:id]
    if @todo.update_attributes params[:todo]
      render json: @todo, status: 200
    else
      render json: @todo, status: 422
    end
  end

  def destroy
    @todo = Todo.find params[:id]
    if @todo.destroy
      head 200
    else
      head 422
    end
  end
end
