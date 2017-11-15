class GenrekeywordsController < ApplicationController
  before_action :set_genrekeyword, only: [:show, :edit, :update, :destroy]

  # GET /genrekeywords
  # GET /genrekeywords.json
  def index
    @genrekeywords = Genrekeyword.all
  end

  # GET /genrekeywords/1
  # GET /genrekeywords/1.json
  def show
  end

  # GET /genrekeywords/new
  def new
    @genrekeyword = Genrekeyword.new
  end

  # GET /genrekeywords/1/edit
  def edit
  end

  # POST /genrekeywords
  # POST /genrekeywords.json
  def create
    @genrekeyword = Genrekeyword.new(genrekeyword_params)

    respond_to do |format|
      if @genrekeyword.save
        format.html { redirect_to @genrekeyword, notice: 'Genrekeyword was successfully created.' }
        format.json { render :show, status: :created, location: @genrekeyword }
      else
        format.html { render :new }
        format.json { render json: @genrekeyword.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /genrekeywords/1
  # PATCH/PUT /genrekeywords/1.json
  def update
    respond_to do |format|
      if @genrekeyword.update(genrekeyword_params)
        format.html { redirect_to @genrekeyword, notice: 'Genrekeyword was successfully updated.' }
        format.json { render :show, status: :ok, location: @genrekeyword }
      else
        format.html { render :edit }
        format.json { render json: @genrekeyword.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /genrekeywords/1
  # DELETE /genrekeywords/1.json
  def destroy
    @genrekeyword.destroy
    respond_to do |format|
      format.html { redirect_to genrekeywords_url, notice: 'Genrekeyword was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_genrekeyword
      @genrekeyword = Genrekeyword.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def genrekeyword_params
      params.require(:genrekeyword).permit(:genre_id, :yoyaku_id, :keyword)
    end
end
