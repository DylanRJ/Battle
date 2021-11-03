describe 'player name', type: :feature do
  it 'displays player names on webpage' do
    sign_in_and_play
    expect(page).to have_content 'Player 1 vs Player 2'
  end
end
