class NoteApp
  attr_reader :notes
  def initialize
    @notes = []
  end

  def add_note(title,body)
    @notes << {title => body}
  end

  def return_titles
    @notes.map{ |x| x.keys[0] }.join("\n")
  end

  def return_note(note)
    @notes.select{ |x| x.keys[0] == note }.map{|y| y.keys[0] + ":" + y.values[0]}.join("\n")
  end
end
