class Api::V1::ApiController < ActionController::API
  rescue_from ActiveRecord::ActiveRecordError, with: :return_status_500

  private

  def return_status_500
    render status: :internal_server_error, plain: 'error'
  end
end