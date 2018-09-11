require 'note_app'

describe NoteApp do
  it 'allows a user to add a note with a title and body' do
    title = 'I like big butts'
    body = 'I cannot lie'
    subject.add_note(title,body)
    expect(subject.notes).to eq [{title => body}]
  end

  it 'allows the user to see a list of all note titles' do
    subject.add_note('hi','aidan')
    subject.add_note('you','are')
    subject.add_note('amaz','ing')
    expect(subject.return_titles).to eq "hi\nyou\namaz"
  end

  it "allows a user to pick a note and see it's title and body" do
    subject.add_note('hi','aidan')
    subject.add_note('you','are')
    subject.add_note('amaz','ing')
    expect(subject.return_note('you')).to eq "you:are"
  end
end
