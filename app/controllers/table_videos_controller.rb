class TableVideosController < ApplicationController
  before_action :set_table_video, only: [:show, :edit, :update, :destroy]

  # GET /table_videos
  # GET /table_videos.json
  def index
    @table_videos = TableVideo.all
  end

  # GET /table_videos/1
  # GET /table_videos/1.json
  def show
  end

  # GET /table_videos/new
  def new
    @table_video = TableVideo.new
  end

  # GET /table_videos/1/edit
  def edit
  end

  # POST /table_videos
  # POST /table_videos.json
  def create
    @table_video = TableVideo.new(table_video_params)

    respond_to do |format|
      if @table_video.save
        format.html { redirect_to @table_video, notice: 'Table video was successfully created.' }
        format.json { render :show, status: :created, location: @table_video }
      else
        format.html { render :new }
        format.json { render json: @table_video.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /table_videos/1
  # PATCH/PUT /table_videos/1.json
  def update
    respond_to do |format|
      if @table_video.update(table_video_params)
        format.html { redirect_to @table_video, notice: 'Table video was successfully updated.' }
        format.json { render :show, status: :ok, location: @table_video }
      else
        format.html { render :edit }
        format.json { render json: @table_video.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /table_videos/1
  # DELETE /table_videos/1.json
  def destroy
    @table_video.destroy
    respond_to do |format|
      format.html { redirect_to table_videos_url, notice: 'Table video was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_table_video
      @table_video = TableVideo.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def table_video_params
      params.require(:table_video).permit(:name, :description, :url, :video_type, :table_id, :status, :creator_id, :modifier_id, :create_time, :modified_time)
    end
end
