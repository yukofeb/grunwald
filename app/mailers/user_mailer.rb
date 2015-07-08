class UserMailer < ApplicationMailer
  default from: 'noreply@grunwald-midori.com'

  def postmail(contact)
    @contact = contact
    # @customer_email = contact.email
    mail(to: contact.email, bcc: "grunwald.information@gmail.com", subject: '【GrunWald】問い合わせを承りました')
  end
end
