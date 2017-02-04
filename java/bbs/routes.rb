# require './app/store'
Rails.application.routes.draw do
  root 'admin#index', as: 'store', via: :all
  controller :sessions do
    get  'login' => :new
    post 'login' => :create
    delete 'logout' => :destroy
  end
  
  resources :carseats
  resources :cars
  get "/ajax_car_add_items" => "cars#ajax_car_add_items"
  post "/ajax_update_car_carseat"=>"cars#ajax_update_car_carseat"
  post "/ajax_update_car_rk_rq"=>"cars#ajax_update_car_rk_rq"
  post "/ajax_update_car_nbis_date"=>"cars#ajax_update_car_nbis_date"
  resources :caritems
  post "ajax_update_caritem_cost" => "caritems#ajax_update_caritem_cost"

  resources :bills
  post "/ajax_get_customer_info"=>"bills#ajax_get_customer_info"
  post "/ajax_get_car_byid"=>"bills#ajax_get_car_byid"
  get "/review_bill"=>"bills#review_bill"
  post "/ajax_update_bill"=>"bills#ajax_update_bill"
  get "/bills_kp"=>"bills#bills_kp"
  get "/edit_order"=>"bills#edit_order"
  get "/bills_td"=>"bills#bills_td"
  
  get "/bills_huifu"=>"bills#bills_huifu"
  get "/bills_gp_fanhuan"=>"bills#bills_gp_fanhuan"
  get "/clues_bills"=>"bills#clues_bills"
  resources :customers
  resources :cluetraces

  resources :clues
  post "/ajax_clue_mobile" => "clues#ajax_clue_mobile"

  # match 'catalog' => StoreApp.new, via: :all
  get 'admin' => 'admin#index'

  get '/car_store_ajax'=>"admin#car_store_ajax"

  resources :users
  get "/ajax_remove_role" => "users#ajax_remove_role"
  get "/update_shop" => "users#update_shop"

  resources :products
  post "/ajax_select_products_by_type" => "products#ajax_select_products_by_type"
  resources :managers

  #附件项目类型
  resources :product_lines
  get "/ajax_change_product_line_is_visible" => "product_lines#ajax_change_product_line_is_visible"
  resources :product_types
  resources :recalls


  resources :report
  get "/reports/yyrb"=>"reports#yyrb"
  get "/reports/van_yyrb"=>"reports#van_yyrb"
  get "/new_guide"=>"reports#edit_guide"
  post "/ajax_update_salesguide"=>"reports#ajax_update_salesguide"
  get "/new_wholesaleguide"=>"reports#new_wholesaleguide"
  post "/ajax_update_wholesaleguide"=>"reports#ajax_update_wholesaleguide"
  get "/reports/gp_report"=>"reports#gp_report"
  get "/reports/carline_gp"=>"reports#carline_gp"
  get "/reports/cars_erp"=>"reports#cars_erp"
  get "/reports/igroup_gp"=>"reports#igroup_gp"
  get "/new_nbis"=> "reports#new_nbis"
  post "/ajax_update_nbis"=>"reports#ajax_update_nbis"
  #get "/reports/report_clue_data"=>"reports#report_clue_data"
  resources :storelogs

  get '/analysis_kpi_data' => 'analysis#kpi_data'
  get '/analysis_clue_data' => 'analysis#clue_data'
  get '/analysis_webitem_data' => 'analysis#webitem_data'

  resources :orders
  post '/ajax_update_bills_gdqk' => 'orders#ajax_update_bills_gdqk'
  post '/ajax_update_bills_order_bz'=>'orders#ajax_update_bills_order_bz'

  post '/get_igroupitem_select_tag'=>'igroupitems#get_igroupitem_select_tag'
  post '/get_sale_select_tag'=>'managers#get_sale_select_tag'

  resources :salepolicies

  resources :carstyles
  post '/get_carstyle_select_tag'=>'carstyles#get_carstyle_select_tag'
end
