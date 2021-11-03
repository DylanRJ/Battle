describe "testing infrastructure", type: :feature do  
  it "displays text" do
    visit '/'
    expect(page).to have_content 'Testing infrastructure working!'
  end
end