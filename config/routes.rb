Rails.application.routes.draw do
  namespace 'api', defaults: { format: :json } do
    namespace 'v1' do
      get '/tasks/statuses', to: 'tasks#statuses'
          get '/tasks/name', to: 'tasks#name'
           get '/tasks/double', to: 'tasks#double'
       get '/projects/sort_by_tasks', to: 'projects#sort_by_tasks'
        get '/projects/index', to: 'projects#index'
         get '/projects/include', to: 'projects#include'
end
  end
end
