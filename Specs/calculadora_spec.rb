require 'rspec'
require'pry'
require_relative '../src/calculadora'

describe('Calculadora') do
    calculadora =  Calculadora.new

    # adição

    it('Deve somar dois inteiros positivos') do
        expect(calculadora.soma(1, 2)).to eq 3
    end

    it('Deve somar um numero qualquer com 0')do
      expect(calculadora.soma(9, 0)).to eq 9
    end

    it('Deve somar numeros negativos')do
      expect(calculadora.soma(-9, -10)).to eq -19
    end

    it('Deve somar numeros negativo e positivo')do
      expect(calculadora.soma(-15, 3)).to eq -12
    end

    it('Deve somar numeros decimais e o resultado deve ser numero inteiro')do
      expect(calculadora.soma(10.5, 5.5)).to eq 16
    end

    it('Deve somar numeros decimais positivos e o resultado deve ser um numero decimal')do
      expect(calculadora.soma(10.5, 5.6)).to eq 16.1
    end

    it('Deve somar numeros decimais com duas casas apos o .')do
      expect(calculadora.soma(25.55, 15.15)).to eq 40.7
    end

    it('Deve somar numeros decimais negativos')do
      expect(calculadora.soma(-11.2, -5.8)).to eq -17
    end

    # subtração

    it('Deve subtrair dois numeros inteiros')do
      expect(calculadora.subtrai(10, 8)).to eq 2
    end

    it('Deve subtrair dois numeros iguais e o resultado deve ser 0')do
      expect(calculadora.subtrai(10, 10)).to eq 0
    end

    it('Deve subtrair zero por qualquer numero inteiro e o resultado deve ser o numero negativo')do
      expect(calculadora.subtrai(0, 10)).to eq -10
    end

    it('Deve subtrair um numero inteiro por zero e o resultado deve ser o mesmo numero')do
      expect(calculadora.subtrai(10, 0)).to eq 10
    end

    it('Deve subtrair um numero negativo por zero e o resultado deve ser o mesmo numero')do
      expect(calculadora.subtrai(-10, 0)).to eq -10
    end

    it('Deve subtrair dois numeros negativos e o resultado deve ser a soma deles')do
     expect(calculadora.subtrai(-10, 20)).to eq -30
    end

    it('Deve subtrair dois numeros decimais')do
      expect(calculadora.subtrai(10.5, 5.1)).to eq 5.4
    end

    it('Deve subtrair dois numeros decimais com duas casas apos o .')do
      expect(calculadora.subtrai(10.55, 5.11)).to eq 5.44
    end
  
    #multiplicação
  
    it('Deve multiplicar dois numeros inteiros')do
      expect(calculadora.multiplica(10, 5)).to eq 50
    end

    it('Deve multiplicar dois numeros iguais')do
      expect(calculadora.multiplica(2, 2)).to eq 4
    end  

    it('Deve multiplicar dois numeros decimais')do
      expect(calculadora.multiplica(10.5, 5.7)).to eq 59.85
    end

    it('Qualquer numero multiplicado por zero deve ser zero')do
      expect(calculadora.multiplica(50, 0)).to eq 0
    end

    it('Deve multiplicar numeros decimais negativos e positivos')do
      expect(calculadora.multiplica(-15, 10)).to eq -150
     end
    
    it('Deve multiplicar dois numeros decimais com duas casas apos o .')do
      expect(calculadora.multiplica(10.45, 5.20)).to eq 54.339999999999996
    end 

    it('Não deve multiplicar resultados igual a zero')do
      expect(calculadora.multiplica(0, 0)).to eq 0 
    end
# divisão
    it('Deve dividir dois numeros inteiros')do
      expect(calculadora.dividir(8, 4)).to eq 2
    end

    it('Deve dividir numeros decimais')do
      expect(calculadora.dividir(10.5, 2.5)).to eq 4.2
    end

    it('Deve dividir numeros decimais com duas casas apos .')do
      expect(calculadora.dividir(10.55, 5.55)).to eq 1.900900900900901
    end
  
    it('Deve dividir numeros negativos')do
      expect(calculadora.dividir(5, -5)).to  eq -1
    end
    
    it('Não calcular para a, b igual a 0')do
      expect(calculadora.dividir(120, 0)).to include ' Não e possivel divizão por 0!' 
    end
  end     