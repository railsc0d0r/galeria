# coding: utf-8
Dann(/^möchte ich das hochgeladene Bild als Eintrag sehen\.$/) do
  entries = page.all('.picture-list-item')

  raise "no entries found in picturelist" unless entries.count > 0
end
