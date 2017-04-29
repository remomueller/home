class ItemsController < ApplicationController
  before_action :find_item_or_redirect, only: [
    :show, :edit, :update, :destroy, :update_cell
  ]

  # GET /items
  # GET /items.json
  def index
    @items = Item.all
  end

  # GET /items/spreadsheet
  # GET /items/spreadsheet.json
  def spreadsheet
    @items = Item.all.order(id: :desc)
  end

  # POST /items/add_row.js
  def add_row
    @item = Item.create
  end

  # # GET /items/1
  # # GET /items/1.json
  # def show
  # end

  # GET /items/new
  def new
    @item = Item.new
  end

  # # GET /items/1/edit
  # def edit
  # end

  # POST /items
  # POST /items.json
  def create
    @item = Item.new(item_params)

    respond_to do |format|
      if @item.save
        format.html { redirect_to @item, notice: 'Item was successfully created.' }
        format.json { render :show, status: :created, location: @item }
      else
        format.html { render :new }
        format.json { render json: @item.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH /items/1
  # PATCH /items/1.json
  def update
    respond_to do |format|
      if @item.update(item_params)
        format.html { redirect_to @item, notice: 'Item was successfully updated.' }
        format.json { render :show, status: :ok, location: @item }
      else
        format.html { render :edit }
        format.json { render json: @item.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH /items/1.js
  def update_cell
    respond_to do |format|
      if @item.update(item_params)
        format.js
      else
        format.js
      end
    end
  end

  # DELETE /items/1
  # DELETE /items/1.json
  def destroy
    @item.destroy
    respond_to do |format|
      format.html { redirect_to items_path, notice: 'Item was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private

  def find_item_or_redirect
    @item = Item.find_by(id: params[:id])
    redirect_without_item
  end

  def redirect_without_item
    empty_response_or_root_path(items_path) unless @item
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def item_params
    params.require(:item).permit(:box, :name, :location, :description)
  end
end
