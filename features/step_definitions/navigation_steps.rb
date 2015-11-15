# coding: utf-8
Angenommen(/^ich navigiere zur Bilder\-Liste\.$/) do
  steps %{ Wenn ich zur "Bilderliste"-Seite gehe.  }
end

Wenn(/^ich zur "(.*?)"\-Seite gehe\.$/) do |page|
  visit(path_for(page)) # go to page
end

Wenn(/^ich zur Anmeldeseite gehe\.$/) do
  steps %{ Wenn ich zur "Login"-Seite gehe. }
end

Dann(/^möchte ich die Bilder\-Liste sehen\.$/) do
  raise "Not on 'Bilderliste' but on #{page.current_path}'" unless page.current_path == path_for("Bilderliste")
end
