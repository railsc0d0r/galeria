# coding: utf-8
Angenommen(/^eine Datei "(.*?)" im Testfixtures\-Verzeichnis\.$/) do |filename|
  File.file?(TestFiles.folder_path.join(filename))
end

Wenn(/^ich das Bild "(.*?)" zum Upload auswähle\.$/) do |filename|
  locator = page.first(:css, 'input.file-picker__input.ember-view', :visible => false)[:id]
  attach_file(locator, TestFiles.folder_path.join(filename), :visible => false)
end
