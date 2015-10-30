# coding: utf-8
Angenommen(/^ein Benutzer mit dem Benutzernamen "(.*?)" und dem Passwort "(.*?)"\.$/) do |username, password|
  @user = FactoryGirl.create(:user, username: username, password: password, password_confirmation: password)

  @user.save!
end

Angenommen(/^ein Benutzer mit der email "(.*?)" und dem Passwort "(.*?)"\.$/) do |email, password|
  @user = FactoryGirl.create(:user, email: email, password: password, password_confirmation: password)

  @user.save!
end

Wenn(/^ich den Benutzernamen "(.*?)" und das Passwort "(.*?)" eingebe\.$/) do |username, password|
  page.has_css?('input#login', visible: true)
  fill_in 'login', :with => username

  page.has_css?('input#password', visible: true)
  fill_in 'password', :with => password
end

Wenn(/^ich die email "(.*?)" und das Passwort "(.*?)" eingebe\.$/) do |email, password|
  steps %{ Wenn ich den Benutzernamen "#{email}" und das Passwort "#{password}" eingebe. } 
end
