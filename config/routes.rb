# Plugin's routes
# See: http://guides.rubyonrails.org/routing.html

get 'orders',                 to: 'orders#index',     as: 'orders'
get 'addform/:projects',      to: 'orders#addform',   as: 'formView'
post 'postform/:projects',    to: 'orders#postForm',  as: 'putform'
get 'addformView/:projects',  to:'orders#addformView', as: 'putformView'
get 'orders/defxmlrequeteSlectform/:field/:data', to: 'orders#defxmlrequeteSlectform', as: 'defxmlrequeteSlectforms'