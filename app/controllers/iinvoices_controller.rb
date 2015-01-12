class IinvoicesController < ApplicationController
  before_action :set_iinvoice, only: [:show, :edit, :update, :destroy]

  # GET /iinvoices
  # GET /iinvoices.json
  def index
    @iinvoices = Iinvoice.all
  end

  # GET /iinvoices/1
  # GET /iinvoices/1.json
  def show
  end

  # GET /iinvoices/new
  def new
    @iinvoice = Iinvoice.new
  end

  # GET /iinvoices/1/edit
  def edit
  end

  # POST /iinvoices
  # POST /iinvoices.json
  def create
    @iinvoice = Iinvoice.new(iinvoice_params)

    respond_to do |format|
      if @iinvoice.save
        format.html { redirect_to @iinvoice, notice: 'Iinvoice was successfully created.' }
        format.json { render :show, status: :created, location: @iinvoice }
      else
        format.html { render :new }
        format.json { render json: @iinvoice.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /iinvoices/1
  # PATCH/PUT /iinvoices/1.json
  def update
    respond_to do |format|
      if @iinvoice.update(iinvoice_params)
        format.html { redirect_to @iinvoice, notice: 'Iinvoice was successfully updated.' }
        format.json { render :show, status: :ok, location: @iinvoice }
      else
        format.html { render :edit }
        format.json { render json: @iinvoice.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /iinvoices/1
  # DELETE /iinvoices/1.json
  def destroy
    @iinvoice.destroy
    respond_to do |format|
      format.html { redirect_to iinvoices_url, notice: 'Iinvoice was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_iinvoice
      @iinvoice = Iinvoice.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def iinvoice_params
      params.require(:iinvoice).permit(:date, :company, :tax, :salesperson)
    end
end
