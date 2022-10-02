type Money = Int
type Account =(Money, Money)
deposit::Money->Account-> Maybe Account
deposit amount (debit, credit)
  |amount < 0 = Nothing
  |otherwise = Just (debit, credit+amount)


withdraw::Money->Account-> Maybe Account
withdraw amount (debit, credit)=
  |amount > 0 = Nothing
  |debit+amount+credit < 0 =Nothing
  |otherwise = Just (debit+amount, credit)
