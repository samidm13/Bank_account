# I would like to view my balance
# I would like to deposit money in my account
# I would like to withdraw money from my account

require 'bank_account'

describe BankAccount do

  it 'can create instance of a bank account' do
    bank_account = BankAccount.new
    expect(bank_account).to be_kind_of(BankAccount)
  end

    it 'can respond to balance' do
      bank_account = BankAccount.new
      expect(bank_account).to respond_to(:balance)
    end

    it 'shows balance of zero intially' do
      bank_account = BankAccount.new
      expect(bank_account.balance).to eq(0)
    end

    it 'deposits money' do
      bank_account = BankAccount.new
      expect(bank_account).to respond_to(:deposit).with(1).argument
    end

    it 'should update the balance' do
      bank_account = BankAccount.new
      bank_account.deposit(10)
      expect(bank_account.balance).to eq(10)
    end

    it 'should withdraw from account' do
      bank_account = BankAccount.new
      expect(bank_account).to respond_to(:withdraw).with(1).argument
    end

    it 'should update balance with withdrawel' do
      bank_account = BankAccount.new
      bank_account.deposit(10)
      bank_account.withdraw(4)
      expect(bank_account.balance).to eq(6)
    end

end
