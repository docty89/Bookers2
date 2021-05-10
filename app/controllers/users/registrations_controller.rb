class Users::RegistrationsController < Devise::RegistrationsController
  
  def create
    #スーパークラス(devise)のcreateアクションを呼ぶ 
    super 
    #WelcomeMailerクラスのsend_when_signupメソッドを呼び、POSTから受け取ったuserのemailとnameを渡す
    @user = resource
    WelcomeMailer.welcome_mail(@user).deliver_now if @user.valid?
  end


end