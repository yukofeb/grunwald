class UserMailer < ApplicationMailer
  default from: 'noreply@grunwald-midori.com'

  def postmail(contact)
    @contact = contact
    mail(to: contact.pc_email, bcc: "grunwald.chiba@gmail.com", subject: "【GrunWald】ご連絡を承りました（#{contact.name} 様）")
  end
end
