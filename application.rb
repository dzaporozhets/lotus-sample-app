require 'haml'
require 'lotus'

module Shop
  class Application < Lotus::Application
    configure do
      load_paths << [
        'controllers',
        'models',
        'views'
      ]

      routes do
        resources :products
        get '/', to: 'products#index'
      end
    end
  end
end
