class NotesList
  attr_accessor :notes

  def initialize(notes)
    @notes = notes
  end

  def preview
    puts "Preview of my notes:"
    @notes.each do |note|
      if note.content.length > 30
        puts "#{note.content[0..29]} (...)"
      else
        puts "#{note.content}"
      end
    end
  end
end
