# Exemplo de importância de métodos públicos VS privatos

class BankAccount
  attr_reader :money

  def initialize(money)
    @money = money
  end

  def withdraw(amount)
    change_money(-amount)
  end

  def deposit(amount)
    change_money(amount)
  end

  private
  def change_money(amount)
    @money += amount
  end
end

matt_account = BankAccount.new(100)

puts "Matheus tem #{matt_account.money}"

matt_account.deposit(50)

puts "Matheus tem #{matt_account.money}"
puts "Matheus ficou feliz e foi beber..."
sleep(2)

matt_account.withdraw(100)

puts "Matheus tem #{matt_account.money}"


puts "Matheus entrou bêbado no banco e foi ver se ele consegue hackear a conta dele"

matt_account.change_money(1_000_000) # => Isso quebra!
# Não pode chamar método privado fora da classe!
