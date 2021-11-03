describe 'attack player', type: :feature do
  it 'should display a confirmation of the attack for player 1' do
    sign_in_and_play
    click_button('p1')
    expect(page).to have_content "You have hit Player 2"
  end

  it 'should display a confirmation of the attack player 2' do
    sign_in_and_play
    click_button('p2')
    expect(page).to have_content "You have hit Player 1"
  end
end
