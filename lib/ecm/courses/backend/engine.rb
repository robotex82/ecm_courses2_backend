module Ecm
  module Courses
    module Backend
      class Engine < ::Rails::Engine
        isolate_namespace Ecm::Courses::Backend
      end
    end
  end
end
