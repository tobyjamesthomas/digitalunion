class StoryTagsController < ApplicationController
  before_action :set_story_tag, only: [:show, :edit, :update, :destroy]

  # GET /story_tags
  # GET /story_tags.json
  def index
    @story_tags = StoryTag.all
  end

  # GET /story_tags/1
  # GET /story_tags/1.json
  def show
  end

  # GET /story_tags/new
  def new
    @story_tag = StoryTag.new
  end

  # GET /story_tags/1/edit
  def edit
  end

  # POST /story_tags
  # POST /story_tags.json
  def create
    @story_tag = StoryTag.new(story_tag_params)

    respond_to do |format|
      if @story_tag.save
        format.html { redirect_to @story_tag, notice: 'Story tag was successfully created.' }
        format.json { render :show, status: :created, location: @story_tag }
      else
        format.html { render :new }
        format.json { render json: @story_tag.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /story_tags/1
  # PATCH/PUT /story_tags/1.json
  def update
    respond_to do |format|
      if @story_tag.update(story_tag_params)
        format.html { redirect_to @story_tag, notice: 'Story tag was successfully updated.' }
        format.json { render :show, status: :ok, location: @story_tag }
      else
        format.html { render :edit }
        format.json { render json: @story_tag.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /story_tags/1
  # DELETE /story_tags/1.json
  def destroy
    @story_tag.destroy
    respond_to do |format|
      format.html { redirect_to story_tags_url, notice: 'Story tag was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_story_tag
      @story_tag = StoryTag.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def story_tag_params
      params.require(:story_tag).permit(:story_id, :tag_id)
    end
end
