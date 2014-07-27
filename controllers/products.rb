require_relative '../models/product'

module Shop
  module Controllers
    module Products
      include Shop::Controller

      action 'Index' do
        expose :products

        def call(params)
          @products = Product.all
        end
      end

      action 'Show' do
        expose :product

        def call(params)
          @product = Product.find(params[:id])
        end
      end

      action 'Edit' do
        before :authenticate
        expose :product

        def call(params)
          @product = Product.find(params[:id])
        end
      end
    end
  end
end
