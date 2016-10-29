require './note'
require './notes_list'

note1 = Note.new("Things I learned from RailsGuide are...")
note2 = Note.new("The answer is 42")
note3 = Note.new("Interesting gotcha from Stack Overflow is...")
notes = [note1, note2, note3]
notes_list = NotesList.new(notes)
notes_list.preview
