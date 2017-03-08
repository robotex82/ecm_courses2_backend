module Ecm
  module Courses
    module Backend
      class CourseDatesController < Itsf::Backend::Resource::BaseController
        def self.resource_class
          Ecm::Courses::CourseDate
        end

        private

        def permitted_params
          params.require(:course_date).permit(:course_id, :description, :start_at, :end_at)
        end
      end
    end
  end
end
