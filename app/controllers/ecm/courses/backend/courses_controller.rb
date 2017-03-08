module Ecm
  module Courses
    module Backend
      class CoursesController < Itsf::Backend::Resource::BaseController
        include Controller::ActsAsListConcern

        def self.resource_class
          Ecm::Courses::Course
        end

        private

        def load_scope
          resource_class.friendly
        end

        # def load_resource
        #   load_scope.friendly.find(params[:id])
        # end

        def permitted_params
          params.require(:course).permit(:course_category_id, :locale, :name, :description)
        end
      end
    end
  end
end
