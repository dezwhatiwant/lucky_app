Rails.application.routes.draw do
  # STEP 1: A ROUTE triggers a controller action
  # verb "/urls" => "namespace/controllers#action"
  get '/lucky' => 'api/examples#lucky_action'
  get '/page_count_url' => 'api/examples#page_count_action'
end
