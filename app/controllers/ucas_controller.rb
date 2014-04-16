class UcasController < ApplicationController
  before_action :set_uca, only: [:show, :edit, :update, :destroy]

  def index
    @ucas = Uca.all
  end

  def show
  end

  def new
    @uca = Uca.new
    @langs = Lang.all
    @lang=DevLang.new
  end

  def edit
    @dev_langs = DevLang.all
  end

  def save_interests(array_l)
    array_l.each do |lang|
      if !lang.save
        return false
      end
    end
  end

  def create
    @uca = Uca.new(uca_params)
    respond_to do |format|
      if @uca.save# and save_interests(langs_ids)# and @uca.interests.create(lang_params)
        format.html { redirect_to @uca, notice: 'Uca was successfully created.' }
        format.json { render action: 'show', status: :created, location: @uca }
      else
        format.html { render action: 'new' }
        format.json { render json: @uca.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @uca.update(uca_params)
        format.html { redirect_to @uca, notice: 'Uca was successfully updated.' }
        format.json { render action: 'show', status: :ok, location: @uca }
      else
        format.html { render action: 'edit' }
        format.json { render json: @uca.errors, status: :unprocessable_entity }
      end
    end
  end

  #def destroy
  #  @uca.destroy
  #  respond_to do |format|
  #    format.html { redirect_to ucas_url }
  #    format.json { head :no_content }
  #  end
  #end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_uca
      @uca = Uca.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def uca_params
      params.require(:uca).permit(:matricula, :curso, :periodo, :email, :lang_ids=>[],:know_ids=>[])
    end

   # def lang_params
   #   params.require(:dev_lang).permit(:lang_ids)
   # end

end
