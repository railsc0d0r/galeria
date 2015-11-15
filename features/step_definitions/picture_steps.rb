# coding: utf-8
Angenommen(/^ein hochgeladenes Bild\.$/) do
  @picture = FactoryGirl.build(:picture)
  @picture.attachement = File.open(TestFiles.folder_path.join('test.png'))

  @picture.save!
end

Dann(/^möchte ich das hochgeladene Bild als Eintrag sehen\.$/) do
  entries = page.all('.picture-list-item')

  raise "no entries found in picturelist" unless entries.count > 0
end