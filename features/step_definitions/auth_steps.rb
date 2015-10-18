Angenommen(/^ein Benutzer mit dem Benutzernamen "(.*?)" und dem Passwort "(.*?)"\.$/) do |username, password|
  @user = FactoryGirl.create(:user, username: username, password: password, password_confirmation: password)

  @user.save!
end

Angenommen(/^ein Benutzer mit der email "(.*?)" und dem Passwort "(.*?)"\.$/) do |email, password|
  @user = FactoryGirl.create(:user, email: email, password: password, password_confirmation: password)

  @user.save!
end

Wenn(/^ich mich mit dem Benutzernamen "(.*?)" und dem Passwort "(.*?)" anmelde\.$/) do |arg1, arg2|
  pending # express the regexp above with the code you wish you had
end

Wenn(/^ich mich mit der email "(.*?)" und dem Passwort "(.*?)" anmelde\.$/) do |arg1, arg2|
  pending # express the regexp above with the code you wish you had
end
