module Spree
  class HomeController < Spree::StoreController
    helper 'spree/products'
    # helper "spree/nav_bar"
    respond_to :html

    def index
      @searcher = build_searcher(params.merge(include_images: true))
      @products = @searcher.retrieve_products
      @products = @products.includes(:possible_promotions) if @products.respond_to?(:includes)
      @taxonomies = Spree::Taxonomy.includes(root: :children)

      #@home = NavElement.find(1)

      @home = NavElement.all
    end
  end
end
