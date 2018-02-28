module Controller
  module UsedSeatsConcern
    def increment_used_seats
      @resource = load_resource
      @resource.used_seats += 1
      if @resource.save
        redirect_to collection_path, notice: I18n.t("controller.used_seats_concern.increment.succeeded")
      else
        redirect_to collection_path, alert: I18n.t("controller.used_seats_concern.increment.failed", errors: @resource.errors.full_messages.to_sentence)
      end
    end

    def decrement_used_seats
      @resource = load_resource
      @resource.used_seats -= 1
      if @resource.save
        redirect_to collection_path, notice: I18n.t("controller.used_seats_concern.decrement.succeeded")
      else
        redirect_to collection_path, alert: I18n.t("controller.used_seats_concern.decrement.failed", errors: @resource.errors.full_messages.to_sentence)
      end
    end
  end
end