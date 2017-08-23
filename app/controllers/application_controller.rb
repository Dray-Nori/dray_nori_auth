class ApplicationController < ActionController::API
 before_action :authenticate_request

 attr_reader :current_teacher

 private
 def authenticate_request
  @current_teacher = AuthorizeApiRequest.call(request.headers).result render json: { error: 'Not Authorized' }, status: 401 unless @current_teacher
 end
end
curl -H "Content-Type: application/json" -X POST -d '{"email":"orestiarsi@gmail.com","password":"pass"}' http://localhost:3000/authenticate
