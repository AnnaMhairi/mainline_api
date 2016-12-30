Rails.application.routes.draw do
  scope '/api' do
    scope '/v1' do
      scope '/emails' do
        get '/' => 'api_emails#receive'
      end
      scope '/payments' do
        get '/' => 'api_payments#process_payment'
      end
    end
  end
end
