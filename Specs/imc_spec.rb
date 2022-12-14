require 'rspec'
require_relative '../src/imc'

describe('Calculo IMC') do
    it('Deve calcular com peso e altura corretos') do
     peso = 60
     altura = 1.70
     expect(imc(peso, altura)).to eq 20.8

    end
    
    it ("Não deve calcular o IMC para altura = 0")do
     peso = 60
     altura = 0
     expect(imc(peso, altura)).to include "Não é possivel calcular o IMC para altura = 0!"
    end

    it("Não deve calcular IMC para peso = 0")do
    expect(imc(peso, altura)).to include "Não é possivel calcular o IMC para peso = 0!"
    end
end

