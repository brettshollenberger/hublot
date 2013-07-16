require 'hublot'

module Hublot
  class Rails < Rails::Railtie
    initializer 'hublot.initialize' do
      ActiveSupport::TimeWithZone.send :include, Hublot
    end
  end
end
