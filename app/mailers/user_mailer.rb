class UserMailer < ApplicationMailer
  default from: 'noreply@grunwald-midori.com'

  def postmail(contact)
    @contact = contact
    mail(to: contact.email, bcc: "grunwald.chiba@gmail.com", subject: "【GrunWald】問い合わせを承りました（#{contact.name} 様）")
  end
end
