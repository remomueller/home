# frozen_string_literal: true

# Allows boxes to be described and opened and closed.
class BoxesController < ApplicationController
  include Redirectable

  before_action :find_box_or_redirect, only: [:show, :edit, :update, :destroy]

  # GET /boxes
  def index
    @boxes = Box.all.page(params[:page]).per(40)
  end

  # # GET /boxes/1
  # def show
  # end

  # GET /boxes/new
  def new
    @box = Box.new
  end

  # # GET /boxes/1/edit
  # def edit
  # end

  # POST /boxes
  def create
    @box = Box.new(box_params)
    if @box.save
      redirect_to @box, notice: "Box was successfully created."
    else
      render :new
    end
  end

  # PATCH /boxes/1
  def update
    if @box.update(box_params)
      redirect_to @box, notice: "Box was successfully updated."
    else
      render :edit
    end
  end

  # DELETE /boxes/1
  def destroy
    @box.destroy
    redirect_to boxes_path, notice: "Box was successfully deleted."
  end

  private

  def find_box_or_redirect
    @box = Box.find_by(id: params[:id])
    empty_response_or_root_path(boxes_path) unless @box
  end

  def box_params
    params.require(:box).permit(:name, :description, :closed)
  end
end
