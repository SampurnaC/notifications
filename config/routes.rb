Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: "pages#home"
  patch "/page/mark_alerts", to: "pages#mark_alerts_read", as: :alert_read
end
