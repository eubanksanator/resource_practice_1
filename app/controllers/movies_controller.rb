class MoviesController < ApplicationController
  def index
    @movies = Movie.all
  end

  def show
    @movie = Movie.find(params[id])
  end

  def new
  end

  def create
    @movie.title = params[:the_title]
    @movie.year = params[:the_year]
    @movie.duration = params[:the_duration]
    @movie.description = params[:the_description]
    @movie.image_url = params[:the_image_url]
    @movie.director_id = params[:the_director_id]

    @movie.save

    render("show")
  end

  def edit
    @movie = Movie.find(params[:id])
  end

  def update
    @movie.title = params[:title]
    @movie.year = params[:year]
    @movie.duration = params[:duration]
    @movie.description = params[:description]
    @movie.image_url = params[:image_url]
    @movie.director_id = params[:director_id]

    render("show")
  end

  def destroy
    movie = Movie.find(params[:id])

    movie.destroy
  end
end
