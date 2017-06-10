module Ecm
  module Courses
    module Backend
      class CoursesController < Itsf::Backend::Resource::BaseController
        include Controller::ActsAsListConcern
        include Controller::FriendlyIdConcern

        def self.resource_class
          Ecm::Courses::Course
        end

        private

        def permitted_params
          params.require(:course).permit(:course_category_id, :locale, :name, :description)
        end
      end
    end
  end
end
