class MenuDishesController < ApplicationController
  # GET /menu_dishes
  # GET /menu_dishes.json
  def index
    @menu_dishes = MenuDish.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @menu_dishes }
    end
  end

  # GET /menu_dishes/1
  # GET /menu_dishes/1.json
  def show
    @menu_dish = MenuDish.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @menu_dish }
    end
  end

  # GET /menu_dishes/new
  # GET /menu_dishes/new.json
  def new
    @menu_dish = MenuDish.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @menu_dish }
    end
  end

  # GET /menu_dishes/1/edit
  def edit
    @menu_dish = MenuDish.find(params[:id])
  end

  # POST /menu_dishes
  # POST /menu_dishes.json
  def create
    @menu_dish = MenuDish.new(params[:menu_dish])

    respond_to do |format|
      if @menu_dish.save
        format.html { redirect_to @menu_dish, notice: 'Menu dish was successfully created.' }
        format.json { render json: @menu_dish, status: :created, location: @menu_dish }
      else
        format.html { render action: "new" }
        format.json { render json: @menu_dish.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /menu_dishes/1
  # PUT /menu_dishes/1.json
  def update
    @menu_dish = MenuDish.find(params[:id])

    respond_to do |format|
      if @menu_dish.update_attributes(params[:menu_dish])
        format.html { redirect_to @menu_dish, notice: 'Menu dish was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @menu_dish.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /menu_dishes/1
  # DELETE /menu_dishes/1.json
  def destroy
    @menu_dish = MenuDish.find(params[:id])
    @menu_dish.destroy

    respond_to do |format|
      format.html { redirect_to menu_dishes_url }
      format.json { head :no_content }
    end
  end
end
