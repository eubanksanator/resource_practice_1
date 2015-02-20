class DirectorsController < ApplicationController
  def index
    directors = Director.all
  end

  def show
    @director = Director.find(params[:id])
  end

  def new
  end

  def create
    @director = Director.new
    @director.dob = params[:dob]
    @director.name = params[:name]
    @director.bio = params[:bio]
    @director.image_url = params[:image_url]

    @director.save

    render("show")
  end

  def edit
    @director = Director.find(params[:id])
  end

  def update
    @director = Director.find(params[:id])

    @director.dob = params[":dob"]
    @director.name = params[":name"]
    @director.bio = params[":bio"]
    @director.image_url = params[":image_url"]

    @director.save

    render("show")
  end

  def destroy
    @director = Director.find(params[:id])

    @director.destroy
  end
end
