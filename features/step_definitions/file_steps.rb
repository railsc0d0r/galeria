# coding: utf-8
Angenommen(/^eine Datei "(.*?)" im Testfixtures\-Verzeichnis\.$/) do |filename|
  File.file?(TestFiles.folder_path.join(filename))
end

Wenn(/^ich das Bild "(.*?)" zum erstellen auswähle\.$/) do |filename|
  # We inject the encoded data for the picture directly into the app-controller because of a bug in phantomjs.
  # Beware: this is not implementation-agnostic!!!
  data_url = DataUrl.from_image filename
  evaluate_script("Frontend.__container__.lookup('controller:pictures.new').set('attachement',#{data_url.to_json});")
end
