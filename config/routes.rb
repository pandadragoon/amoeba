Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  namespace :api do
    namespace :v1 do
      mount Auth::Engine, at: '/auth'
      mount Communications::Engine, at: '/communications'
      mount FormBuilder::Engine, at: '/form_builder'
      mount FormInstance::Engine, at: '/form_instance'
      mount FormProcessor::Engine, at: '/form_processor'
      mount Orgs::Engine, at: '/orgs'
      mount Users::Engine, at: '/users'

    end
  end
end
