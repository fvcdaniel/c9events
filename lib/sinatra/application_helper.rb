require 'sinatra/base'
require 'gmail'
require "base64"
require 'openssl'


module ApplicationHelper
  
  def protected!
    return if authorized?
    headers['WWW-Authenticate'] = 'Basic realm="Restricted Area"'
    halt 401, "Not authorized\n"
  end

  def authorized?
    @auth ||=  Rack::Auth::Basic::Request.new(request.env)
    @auth.provided? and @auth.basic? and @auth.credentials and @auth.credentials == ['admin', 'admin']
  end
  
  def teste
    "Hello Mundo"
  end
  
  def mailToCoord(servico_id,metodo)
    serv = Servico.find(servico_id)
    puts serv.coord.nome
    
    if metodo == "create"
      assunto = "Um Evento foi criado para a Coord "+serv.coord.nome+"."
      mail(serv.coord.email,assunto)
    
    elsif metodo == "update"
      assunto = "Um Evento que a Coord "+serv.coord.nome+" fazia parte foi atualizado."
      mail(serv.coord.email,assunto)
    else
      assunto = "Um Evento que a Coord "+serv.coord.nome+" fazia parte foi deletado."
      mail(serv.coord.email,assunto)
    end
    
   
      
    
  end
 
  def valida_evento_data (servicos,eventoData)
    evento =  Evento.all
    evento.each do |e|
      if ((eventoData >= e.data_ini) && (eventoData <= e.data_fim))
        puts "Ja existe um evento nessa data"
        return false
      end
    end
    
    
    time= Time.now
    servicos.each do |s|
      serv = Servico.find(s)
      puts time + serv.tempo.days
      puts eventoData
      if time + (serv.tempo.days) <= eventoData
          puts "EVENTO OK"
          
      else
          puts "POUCO TEMPO"
          return false
          
      end
      
    end
  end
  
  def mail(dest, assunto)
    
    Gmail.connect("devlaravelx","laravel1111") do |gmail|
      if gmail.logged_in?
        email = gmail.compose do
          to dest
          subject "TESTE"
          body assunto
        end
        email.deliver! # or: gmail.deliver(email)
      end
    end
  end
  
  def validaservico(evento)
     
    
        evento.servicos.each do |s|
          t = (s.tempo*0.3).round
          if Time.now <=  evento.created_at + t.days
            puts "Pode alterar"
            return true
          else
            puts "Não pode alterar"
            return false
          end
          
        end
  end
  
  def valida_admin(usuarioid)
    usuario = Usuario.find(usuarioid)
    
    if usuario.admin == true
      return true
    else
      return false
    end
  
  end
  
  def adminOrOwner(usuarioid,evento)
      user =  Usuario.find(usuarioid)
    if (evento.usuario_id.eql?Integer(usuarioid)) || (user.admin.eql?true)
      puts "Usuario criou o evento ou é admin"
      return true
    else
      puts "Usuario NAO criou o evento e NAO é admin"
      return false
      
    end
    
  end
  
  # def pri_pub_key
  #   chave_privada= OpenSSL::PKey::RSA.new 1024
  #   arq = File.open "chave.pri","w"
  #   arq.write chave_privada
  #   puts chave_privada
  #   arq.close
  
  #   chave_publica=chave_privada.public_key
  #   arq = File.open "chave.pub","w"
  #   arq.write chave_publica
  #   arq.close
  #   puts chave_publica
  #   chave_pub = File.read("chave.pub")
  #   return chave_pub
  # end
  
  
  def decrypt (pass)
    
    #key = "mMlTUwWqQt2ZOm7I4p7hh+YuPjmZcUlJ5rOuVAeVVjk="
    iv = "1234567812345678";
    key = "mMlTUwWqQt2ZOm7I4p7hh+YuPjmZcUlJ5rOuVAeVVjk="
    decipher = OpenSSL::Cipher::AES256.new(:CBC)
    decipher.decrypt
    decipher.key = key
    decipher.iv = iv
    
    senha = decipher.update(pass) + decipher.final
    
    
    return senha
  end
  
end
