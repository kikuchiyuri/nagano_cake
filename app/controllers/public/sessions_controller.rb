# frozen_string_literal: true

class Public::SessionsController < Devise::SessionsController
  # before_action :configure_sign_in_params, only: [:create]
  before_action :customer_state, only: [:create]

  def after_sign_in_path_for(resource)
    root_path
  end

  def after_sign_out_path_for(resource)
    root_path
  end

  # GET /resource/sign_in
  # def new
  #   super
  # end

  # POST /resource/sign_in
  # def create
  #   super
  # end

  # DELETE /resource/sign_out
  # def destroy
  #   super
  # end

  protected

  # If you have extra params to permit, append them to the sanitizer.
  # def configure_sign_in_params
  #   devise_parameter_sanitizer.permit(:sign_in, keys: [:attribute])
  # end

  # 退会処理
  # 退会しているかを判断するメソッド
  def customer_state
    ## 入力されたemailからアカウントを一件取得
    @customer = Customer.find_by(email: params[:customer][:email])
    ## アカウントを取得できなかった場合、このメソッドを修了する（→会員は新規登録する必要がある）
    return if !@customer
    ## 取得したアカウントのパスワードと入力されたパスワードが一致しているかを判別
    if @customer.valid_passward?(params[:customer][:passward])
      redirect_to new_customer_registration_path
    else
      redirect_to action: :create
    end

  end
end
