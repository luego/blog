class CategoryController < ApplicationController
  before_filter :authenticate_user!, only: [:new]
  before_action :set_post, only: [:new]
  def new

  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_post
      @category = Category.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def post_params
      params.require(:category).permit(:name)
    end

end
