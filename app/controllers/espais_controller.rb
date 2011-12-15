class EspaisController < ApplicationController
  # GET /espais
  # GET /espais.json
  def index
    @espais = Espai.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @espais }
    end
  end

  # GET /espais/1
  # GET /espais/1.json
  def show
    @espai = Espai.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @espai }
    end
  end

  # GET /espais/new
  # GET /espais/new.json
  def new
    @espai = Espai.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @espai }
    end
  end

  # GET /espais/1/edit
  def edit
    @espai = Espai.find(params[:id])
  end

  # POST /espais
  # POST /espais.json
  def create
    @espai = Espai.new(params[:espai])

    respond_to do |format|
      if @espai.save
        format.html { redirect_to @espai, notice: 'Espai was successfully created.' }
        format.json { render json: @espai, status: :created, location: @espai }
      else
        format.html { render action: "new" }
        format.json { render json: @espai.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /espais/1
  # PUT /espais/1.json
  def update
    @espai = Espai.find(params[:id])

    respond_to do |format|
      if @espai.update_attributes(params[:espai])
        format.html { redirect_to @espai, notice: 'Espai was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @espai.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /espais/1
  # DELETE /espais/1.json
  def destroy
    @espai = Espai.find(params[:id])
    @espai.destroy

    respond_to do |format|
      format.html { redirect_to espais_url }
      format.json { head :ok }
    end
  end
end
