Redmine::Plugin.register :jd_order_management do
  name 'JD Traking Order Management plugin'
  author 'DJELLOULI JALILE'
  description 'this plugin is used for tracking of order '
  version '1.0.0'
  url 'http://example.com/path/to/plugin'
  author_url 'http://example.com/about'

  permission :orders, { orders: [:index] }
  permission :ordersAdmin, :orders => :indexAdmin

  menu :project_menu , :OrderTrack, { controller: 'orders', action: 'index' }, caption: 'Suivi piéces/SAV', after: :activity, param: :project_id
  menu :application_menu     , :OrderTrack, { controller: 'orders',  action: 'indexAdmin' }, caption: 'Suivi piéces/SAV', param: :project_id

  #settings default: {'empty' => true}, partial: 'settings/order_settings'
  #permission :Suivi_Sav, :orders => :index
end
