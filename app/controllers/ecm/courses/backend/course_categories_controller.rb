module Ecm
  module Courses
    module Backend
      class CourseCategoriesController < Itsf::Backend::Resource::BaseController
        def self.resource_class
          Ecm::Courses::CourseCategory
        end

        private

        def load_resource
          load_scope.friendly.find(params[:id])
        end
      end
    end
  end
end
