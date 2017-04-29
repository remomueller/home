Rails.application.routes.draw do
  root 'items#spreadsheet'

  resources :items do
    collection do
      get :spreadsheet
      post :add_row
    end

    member do
      patch :update_cell
    end
  end
end
