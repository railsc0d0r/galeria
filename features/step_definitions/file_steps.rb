# coding: utf-8
Angenommen(/^eine Datei "(.*?)" im Testfixtures\-Verzeichnis\.$/) do |filename|
  path_to_fixtures = Rails.root.join('features','support','test_files')

  File.file?(path_to_fixtures + filename)
end
