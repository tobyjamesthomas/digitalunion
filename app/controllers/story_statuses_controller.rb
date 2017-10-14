class StoryStatusesController < ApplicationController
  before_action :set_story_status, only: [:show, :edit, :update, :destroy]

  # GET /story_statuses
  # GET /story_statuses.json
  def index
    @story_statuses = StoryStatus.all
  end

  # GET /story_statuses/1
  # GET /story_statuses/1.json
  def show
  end

  # GET /story_statuses/new
  def new
    @story_status = StoryStatus.new
  end

  # GET /story_statuses/1/edit
  def edit
  end

  # POST /story_statuses
  # POST /story_statuses.json
  def create
    @story_status = StoryStatus.new(story_status_params)

    respond_to do |format|
      if @story_status.save
        format.html { redirect_to @story_status, notice: 'Story status was successfully created.' }
        format.json { render :show, status: :created, location: @story_status }
      else
        format.html { render :new }
        format.json { render json: @story_status.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /story_statuses/1
  # PATCH/PUT /story_statuses/1.json
  def update
    respond_to do |format|
      if @story_status.update(story_status_params)
        format.html { redirect_to @story_status, notice: 'Story status was successfully updated.' }
        format.json { render :show, status: :ok, location: @story_status }
      else
        format.html { render :edit }
        format.json { render json: @story_status.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /story_statuses/1
  # DELETE /story_statuses/1.json
  def destroy
    @story_status.destroy
    respond_to do |format|
      format.html { redirect_to story_statuses_url, notice: 'Story status was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_story_status
      @story_status = StoryStatus.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def story_status_params
      params.require(:story_status).permit(:story_id, :status_id)
    end
end
