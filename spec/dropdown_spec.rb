

describe 'dropdown', :dropdown do
    it 'item especifico simples' do 
        visit 'http://training-wheels-protocol.herokuapp.com/dropdown'
        select('Steve Rogers', from: 'dropdown')
    end

    it 'item sem id' do 
        visit 'http://training-wheels-protocol.herokuapp.com/dropdown'
        drop = find('.avenger-list')
        drop.select('Tony Stark')
        #também funciona | drop.find('option', text: 'Tony Stark').select_option
    end

    it 'item aleatorio' do 
        visit 'http://training-wheels-protocol.herokuapp.com/dropdown'
        drop = find('.avenger-list')
        drop.all('option').sample.select_option
    end
end