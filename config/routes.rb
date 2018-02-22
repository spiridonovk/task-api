Rails.application.routes.draw do
  namespace 'api', defaults: { format: :json } do
    namespace 'v1' do
      get '/tasks/statuses', to: 'tasks#statuses'
      get '/projects/sort_by_tasks', to: 'projects#sort_by_tasks'
      get '/projects/', to: 'projects#index'
      get '/tasks/first_letter', to: 'tasks#first_letter'
      get '/projects/include', to: 'projects#include'
      get '/tasks/double', to: 'tasks#double'
    end
  end
end
