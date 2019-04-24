

describe 'Meu primeiro script' do
    it 'deve visitar a pagina Training Wheels Protocol' do
        visit 'http://training-wheels-protocol.herokuapp.com'
        expect(page.title).to eql('Training Wheels Protocol')
    end
end