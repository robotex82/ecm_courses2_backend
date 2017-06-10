module Ecm
  module Courses
    module Backend
      class CourseCategoriesController < Itsf::Backend::Resource::BaseController
        include Controller::FriendlyIdConcern

        def self.resource_class
          Ecm::Courses::CourseCategory
        end

        private

        def permitted_params
          params.require(:course_category).permit(:parent_id, :locale, :name, :description)
        end
      end
    end
  end
end
