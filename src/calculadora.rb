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

  def imc(peso, altura)
    if altura == 0 
        return 'Não é possivel calcular o IMC para altura = 0!'
    end
    imc_calculado = peso / (altura * altura)
    imc_calculado.round(1)
  end
end