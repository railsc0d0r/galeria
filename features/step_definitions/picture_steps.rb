# coding: utf-8
Angenommen(/^ein hochgeladenes Bild\.$/) do
  @picture = FactoryGirl.build(:picture)
  @picture.attachement = File.open(TestFiles.folder_path.join('test.png'))

  @picture.save!
end

Angenommen(/^(\d+) hochgeladene Bilder\.$/) do |count|
  count.to_i.times do
    steps %{ Angenommen ein hochgeladenes Bild. }
  end
end

Angenommen(/^ein hochgeladenes und veröffentlichtes Bild\.$/) do
  steps %{ Angenommen ein hochgeladenes Bild. }
  @picture.update_attribute(:public,true)
end

Angenommen(/^(\d+) hochgeladene und veröffentlichte Bilder\.$/) do |count|
  count.to_i.times do
    steps %{ Angenommen ein hochgeladenes und veröffentlichtes Bild. }
  end
end

Wenn(/^ich die Checkbox neben dem hochgeladenen Bild aktiviere\.$/) do
  steps %{ Wenn ich die Checkbox "#{@picture.id}" aktiviere. }
end

Wenn(/^ich die Checkbox neben dem hochgeladenen Bild deaktiviere\.$/) do
  steps %{ Wenn ich die Checkbox "#{@picture.id}" deaktiviere. }
end

Wenn(/^ich das hochgeladene Bild zum Löschen auswähle\.$/) do
  steps %{ Wenn ich den "DELETE"-Link klicke. }
end

Wenn(/^ich das hochgeladene Bild zum Bearbeiten auswähle\.$/) do
  steps %{ Wenn ich den "EDIT"-Link klicke. }
end

Dann(/^möchte ich das hochgeladene Bild als Eintrag sehen\.$/) do
  entries = page.all('.picture-list-item')

  raise "No entries found in picturelist" unless entries.count > 0
end

Dann(/^möchte ich das hochgeladene Bild nicht als Eintrag sehen\.$/) do
  entries = page.all('.picture-list-item')

  raise "Still entries found in picturelist" if entries.count > 0
end

Dann(/^will ich (\d+) Bilder in einer Gallerie angezeigt bekommen\.$/) do |count|
  gallery = page.find('.gallery')

  within(gallery) do
    assert_selector('img.picture', count: count)
  end
end
