class Calculadora

  def soma(a, b)
    a + b
  end 

  def subtrai(a, b)
    a - b
  end

  def multiplica(a, b)
    a * b  
  end 

  def dividir(a, b)
    if a == 0 || b == 0
      return ' Não e possivel divizão por 0!'
    end  
    a / b 
  end  
   
end  