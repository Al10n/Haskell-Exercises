pi_approx:: Int -> Double
pi_approx n= sqrt(6*sum(take n rQZ ))

rQZ = [1/x^2|x<-[1..]]

