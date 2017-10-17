class Admin::HomefeaturesController < AdminController
  before_action :set_admin_homefeature, only: [:show, :edit, :update, :destroy]

  # GET /admin/homefeatures
  # GET /admin/homefeatures.json
  def index
    @admin_homefeatures = Homefeature.all
  end

  # GET /admin/homefeatures/1
  # GET /admin/homefeatures/1.json
  def show
  end

  # GET /admin/homefeatures/new
  def new
    @admin_homefeature = Homefeature.new
  end

  # GET /admin/homefeatures/1/edit
  def edit
  end

  # POST /admin/homefeatures
  # POST /admin/homefeatures.json
  def create
    @admin_homefeature = Homefeature.new(admin_homefeature_params)

    respond_to do |format|
      if @admin_homefeature.save
        format.html { redirect_to admin_homefeatures_url, notice: 'Homefeature was successfully created.' }
        format.json { render :show, status: :created, location: @admin_homefeature }
      else
        format.html { render :new }
        format.json { render json: @admin_homefeature.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /admin/homefeatures/1
  # PATCH/PUT /admin/homefeatures/1.json
  def update
    respond_to do |format|
      if @admin_homefeature.update(admin_homefeature_params)
        format.html { redirect_to admin_homefeatures_url, notice: 'Homefeature was successfully updated.' }
        format.json { render :show, status: :ok, location: @admin_homefeature }
      else
        format.html { render :edit }
        format.json { render json: @admin_homefeature.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /admin/homefeatures/1
  # DELETE /admin/homefeatures/1.json
  def destroy
    @admin_homefeature.destroy
    respond_to do |format|
      format.html { redirect_to admin_homefeatures_url, notice: 'Homefeature was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_admin_homefeature
      @admin_homefeature = Homefeature.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def admin_homefeature_params
     params.require(:homefeature).permit(:title,:subtitle,:link_text,:link_path,:testimonial_image,:testimonila_remarks,:image,:image_text,:testimonila_name)
    end
end
