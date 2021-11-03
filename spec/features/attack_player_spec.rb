describe 'attack player', type: :feature do
  it 'should display a confirmation of the attack' do
    sign_in_and_play
    expect(page).to have_content "Player 1's hit points"
  end
end
