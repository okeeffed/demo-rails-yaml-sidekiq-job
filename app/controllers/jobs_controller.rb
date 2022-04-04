class JobsController < ApplicationController
  def create
    if params[:template_group].present? && params[:template_name].present?
      TemplateJob.perform_async(params[:template_group], params[:template_name])
      render json: { message: 'Accepted' }, status: :accepted
    else
      render json: { error: 'Missing template_group or template_name' }, status: :bad_request
    end
  end
end
