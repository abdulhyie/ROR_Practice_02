class ParticipatesController < ApplicationController
  def create
    @event = Event.find(params[:event_id])
    @comment = @event.participates.create(clip_params)
    redirect_to event_path(@event.id)
  end

  private

  def clip_params
    params.require(:participate).permit(:name, :email)
  end
end
