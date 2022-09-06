class TransactionsController < ApplicationController
  skip_before_action :verify_authenticity_token

  def import_cnba_file
    service = ::ImportCnbaFile.new(params_transactions['file'])
    service.save_data
    render json: { 'message': 'The transactions were imported with success' }, status: 200
  end

  private

  def params_transactions
    params.permit(:file)
  end
end
