

describe 'Formulário' do 
    it 'deve fazer login com sucesso' do
        visit 'http://training-wheels-protocol.herokuapp.com/' 
        
        click_link 'Login'

        fill_in 'username', with: 'stark'
        fill_in 'password', with: 'jarvis!'

        click_button 'Login'

        expect(find('#flash')).to have_content 'Olá, Tony Stark. Você acessou a área logada!'
    end

    it 'senha incorreta' do 
        visit 'http://training-wheels-protocol.herokuapp.com/'

        click_link 'Login com Cadastro'

        fill_in 'usernameId', with: 'stark'
        fill_in 'passwordId', with: '12345'

        click_button 'Entrar'

        expect(find('#flash')).to have_content 'Senha é invalida!'
    end

    it 'usuario nao cadastrado' do 
        visit 'http://training-wheels-protocol.herokuapp.com/'

        click_link 'Login com Cadastro'

        fill_in 'usernameId', with: 'rogers'
        fill_in 'passwordId', with: '12345'

        click_button 'Entrar'

        expect(find('#flash')).to have_content 'O usuário informado não está cadastrado!'
    end
end