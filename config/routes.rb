Rails.application.routes.draw do
  # Route for bare domain:
  get('/', { :controller => 'movies', :action => 'index' })

  # Routes for the Director resource:
  # CREATE
  get('/directors/new', { :controller => 'directors', :action => 'new' })
  get('/create_director', { :controller => 'director', :action => 'create' })

  # READ
  get('/directors', { :controller => 'directors', :action => 'index' })
  get('/directors/id', { :controller => 'directors', :action => 'show' })

  # UPDATE
  get('/directors/:id/edit', { :controller => 'directors', :action => 'edit' })
  get('/update_director/:id', { :controller => 'directors', :action => 'update' })

  # DELETE
  get('/delete_director/:id', { :controller => 'directors', :action => 'destroy' })
  #------------------------------

  # Routes for the Movie resource:
  # CREATE
  get('/movies/new', { :controller => 'movies', :action => 'new' })
  get('/create_movie', { :controller => 'movies', :action => 'create' })

  # READ
  get('/movies', { :controller => 'movies', :action => 'index' })
  get('/movies/:id', { :controller => 'movies', :action => 'show' })

  # UPDATE
  get('/movies/:id/edit', { :controller => 'movies', :action => 'edit' })
  get('/update_movie/:id', { :controller => 'movies', :action => 'update' })

  # DELETE
  get('/delete_movie/:id', { :controller => 'movies', :action => 'destroy' })
  #------------------------------

  # Routes for the Role resource:
  # CREATE
  get('/roles/new', { :controller => 'roles', :action => 'new' })
  get('/create_role', { :controller => 'roles', :action => 'create' })

  # READ
  get('/roles', { :controller => 'roles', :action => 'index' })
  get('/roles/:id', { :controller => 'roles', :action => 'show' })

  # UPDATE
  get('/roles/:id/edit', { :controller => 'roles', :action => 'edit' })
  get('/update_role/:id', { :controller => 'roles', :action => 'update' })

  # DELETE
  get('/delete_role/:id', { :controller => 'roles', :action => 'destroy' })
  #------------------------------

  # Routes for the Actor resource:
  # CREATE
  get('/actors/new', { :controller => 'actors', :action => 'new' })
  get('/create_actor', { :controller => 'actors', :action => 'create' })

  # READ
  get('/actors', { :controller => 'actors', :action => 'index' })
  get('/actors/:id', { :controller => 'actors', :action => 'show' })

  # UPDATE
  get('/actors/:id/edit', { :controller => 'actors', :action => 'edit' })
  get('/update_actor/:id', { :controller => 'actors', :action => 'update' })

  # DELETE
  get('/delete_actor/:id', { :controller => 'actors', :action => 'destroy' })
  #------------------------------
end
