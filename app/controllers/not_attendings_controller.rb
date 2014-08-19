class NotAttendingsController < ApplicationController
  before_action :set_not_attending, only: [:show, :edit, :update, :destroy]

  # GET /not_attendings
  # GET /not_attendings.json
  def index
    @not_attendings = NotAttending.all
  end

  # GET /not_attendings/1
  # GET /not_attendings/1.json
  def show
  end

  # GET /not_attendings/new
  def new
    @not_attending = NotAttending.new
  end

  # GET /not_attendings/1/edit
  def edit
  end

  # POST /not_attendings
  # POST /not_attendings.json
  def create
    @not_attending = NotAttending.new(not_attending_params)

    respond_to do |format|
      if @not_attending.save
        format.html { redirect_to @not_attending, notice: 'Not attending was successfully created.' }
        format.json { render :show, status: :created, location: @not_attending }
      else
        format.html { render :new }
        format.json { render json: @not_attending.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /not_attendings/1
  # PATCH/PUT /not_attendings/1.json
  def update
    respond_to do |format|
      if @not_attending.update(not_attending_params)
        format.html { redirect_to @not_attending, notice: 'Not attending was successfully updated.' }
        format.json { render :show, status: :ok, location: @not_attending }
      else
        format.html { render :edit }
        format.json { render json: @not_attending.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /not_attendings/1
  # DELETE /not_attendings/1.json
  def destroy
    @not_attending.destroy
    respond_to do |format|
      format.html { redirect_to not_attendings_url, notice: 'Not attending was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_not_attending
      @not_attending = NotAttending.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def not_attending_params
      params.require(:not_attending).permit(:first_name, :last_name, :email)
    end
end
