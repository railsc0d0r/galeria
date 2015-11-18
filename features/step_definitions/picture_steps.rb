# coding: utf-8
Angenommen(/^ein hochgeladenes Bild\.$/) do
  @picture = FactoryGirl.build(:picture)
  @picture.attachement = File.open(TestFiles.folder_path.join('test.png'))

  @picture.save!
end

Angenommen(/^ein hochgeladenes und veröffentlichtes Bild\.$/) do
  steps %{ Angenommen ein hochgeladenes Bild. }
  @picture.update_attribute(:public,true)
end

Wenn(/^ich die Checkbox neben dem hochgeladenen Bild aktiviere\.$/) do
  steps %{ Wenn ich die Checkbox "#{@picture.id}" aktiviere. }
end

Wenn(/^ich die Checkbox neben dem hochgeladenen Bild deaktiviere\.$/) do
  steps %{ Wenn ich die Checkbox "#{@picture.id}" deaktiviere. }
end

Dann(/^möchte ich das hochgeladene Bild als Eintrag sehen\.$/) do
  entries = page.all('.picture-list-item')

  raise "no entries found in picturelist" unless entries.count > 0
end
