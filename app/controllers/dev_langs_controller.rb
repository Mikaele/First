class DevLangsController < ApplicationController
  before_action :set_dev_lang, only: [:show, :edit, :update, :destroy]

  # GET /dev_langs
  # GET /dev_langs.json
  def index
    @dev_langs = DevLang.all
  end

  # GET /dev_langs/1
  # GET /dev_langs/1.json
  def show
  end

  # GET /dev_langs/new
  def new
    @dev_lang = DevLang.new
  end

  # GET /dev_langs/1/edit
  def edit
  end

  # POST /dev_langs
  # POST /dev_langs.json
  def create
    @dev_lang = DevLang.new(dev_lang_params)

    respond_to do |format|
      if @dev_lang.save
        format.html { redirect_to @dev_lang, notice: 'Dev lang was successfully created.' }
        format.json { render action: 'show', status: :created, location: @dev_lang }
      else
        format.html { render action: 'new' }
        format.json { render json: @dev_lang.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /dev_langs/1
  # PATCH/PUT /dev_langs/1.json
  def update
    respond_to do |format|
      if @dev_lang.update(dev_lang_params)
        format.html { redirect_to @dev_lang, notice: 'Dev lang was successfully updated.' }
        format.json { render action: 'show', status: :ok, location: @dev_lang }
      else
        format.html { render action: 'edit' }
        format.json { render json: @dev_lang.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /dev_langs/1
  # DELETE /dev_langs/1.json
  def destroy
    @dev_lang.destroy
    respond_to do |format|
      format.html { redirect_to dev_langs_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_dev_lang
      @dev_lang = DevLang.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def dev_lang_params
      params.require(:dev_lang).permit(:nome, :obs)
    end
end
