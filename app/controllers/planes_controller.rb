class PlanesController < ApplicationController
	def index
		@planes = Plane.all
	end

	def new

	end

	def create
		plane = params.require(:planes).permit(:name, :kind, :description)
		Plane.create(plane)
		redirect_to '/planes'
	end

	def show
		id = params[:id]
		@plane = Plane.find(id)
	end
end