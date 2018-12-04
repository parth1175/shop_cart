module Spree
  class NavBarController < Spree::StoreController
  before_action :set_elements, only:[:index, :about, :contactus]
    def index

    end

    def about

    end

    def contactus

    end

    private

    def set_elements
      @home = NavElement.all
    end

  end
end
