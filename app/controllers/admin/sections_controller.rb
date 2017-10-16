class Admin::SectionsController < AdminController
  before_action :set_admin_section, only: [:show, :edit, :update, :destroy]

  # GET /admin/sections
  # GET /admin/sections.json
  def index
    @admin_sections = HomeSection.all
  end

  # GET /admin/sections/1
  # GET /admin/sections/1.json
  def show
  end

  # GET /admin/sections/new
  def new
    @admin_section = HomeSection.new
  end

  # GET /admin/sections/1/edit
  def edit
  end

  # POST /admin/sections
  # POST /admin/sections.json
  def create
    @admin_section = AHomeSection.new(admin_section_params)

    respond_to do |format|
      if @admin_section.save
        format.html { redirect_to @admin_section, notice: 'Section was successfully created.' }
        format.json { render :show, status: :created, location: @admin_section }
      else
        format.html { render :new }
        format.json { render json: @admin_section.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /admin/sections/1
  # PATCH/PUT /admin/sections/1.json
  def update
    respond_to do |format|
      if @section.update(admin_section_params)
        format.html { redirect_to admin_sections_path, notice: 'Section was successfully updated.' }
        format.json { render :show, status: :ok, location: @admin_section }
      else
        format.html { render :edit }
        format.json { render json: @admin_section.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /admin/sections/1
  # DELETE /admin/sections/1.json
  def destroy
    @admin_section.destroy
    respond_to do |format|
      format.html { redirect_to admin_sections_url, notice: 'Section was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_admin_section
      @section = HomeSection.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def admin_section_params
       params.require(:section).permit(:name,:title, :subtitle,:link_path,:link_text)
    end
end
