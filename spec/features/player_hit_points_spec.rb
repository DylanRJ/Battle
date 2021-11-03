describe 'player hit points', type: :feature do
  it 'displays player hit points on webpage' do
    visit '/'
    fill_in 'player_1', with: 'Player 1'
    fill_in 'player_2', with: 'Player 2'
    click_button 'Submit'
    expect(page).to have_content "Player 1's hit points"
    expect(page).to have_content "Player 2's hit points"
  end
end
