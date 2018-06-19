module Ecm
  module Courses
    module Backend
      class CoursesController < Itsf::Backend::Resource::BaseController
        include ResourcesController::ActsAsListConcern
        include ResourcesController::FriendlyIdConcern
        include Controller::UsedSeatsConcern

        def self.resource_class
          Ecm::Courses::Course
        end

        private

        def permitted_params
          params.require(:course).permit(:course_category_id, :locale, :name, :description, :seats, :used_seats)
        end
      end
    end
  end
end
