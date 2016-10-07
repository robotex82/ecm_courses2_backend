module Ecm
  module Courses
    module Backend
      module Configuration
        def configure
          yield self
        end

        mattr_accessor(:registered_controllers) do
          lambda do
            [
              Ecm::Staff::Backend::CourseCategoriesController,
              Ecm::Staff::Backend::CoursesController,
              Ecm::Staff::Backend::CourseDatesController
            ]
          end
        end

        mattr_accessor(:registered_services) do
          lambda do
            []
          end
        end
      end
    end
  end
end
