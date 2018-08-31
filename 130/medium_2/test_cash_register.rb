require 'minitest/autorun'

require_relative 'cash_register'
require_relative 'transaction'

class CashRegisterTest < Minitest::Test

  def setup
    @register = CashRegister.new(100)
    @transaction = Transaction.new(10)
    @transaction.amount_paid = 15
  end
  def test_accept_money

    assert_equal(115, @register.accept_money(@transaction))
  end

  def test_change
    assert_equal(5, @register.change(@transaction) )
  end

  def test_give_receipt
    assert_output("You've paid $10.\n") do
      @register.give_receipt(@transaction)
    end
  end

  def test_prompt_for_payment
    input = StringIO.new("20\n")
    output = StringIO.new
    @transaction.prompt_for_payment(input: input, output: output)
    assert_equal(20, @transaction.amount_paid)
  end
end