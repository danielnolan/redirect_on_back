module RedirectOnBack
  class Engine < Rails::Engine
    initializer 'redirect_on_back controller extensions includes' do
      ActiveSupport.on_load(:action_controller) do
        include RedirectOnBack::ControllerAdditions
      end
    end
  end
end
