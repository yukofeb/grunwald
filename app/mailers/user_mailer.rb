class UserMailer < ApplicationMailer
  default from: 'noreply@grunwald-midori.com'

  def postmail(contact)
    @contact = contact
    # [todo] リリース前にbcc先を変更、環境変数化
    mail(to: contact.email, bcc: "grunwald.information@gmail.com", subject: '【GrunWald】問い合わせを承りました')
  end
end
