module Ecm
  module Courses
    module Backend
      class CourseDatesController < Itsf::Backend::Resource::BaseController
        def self.resource_class
          Ecm::Courses::CourseDate
        end
      end
    end
  end
end
