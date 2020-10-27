Coupons::Engine.routes.draw do
  patch '/coupons', to: 'coupons#batch'
  get '/coupons/apply', to: 'coupons#apply', as: 'apply_coupon', format: 'json'
mount Coupons::Engine => '/', as: 'coupons_engine'
  resources :coupons do
    get :remove, on: :member
    get :duplicate, on: :member
  end
end
