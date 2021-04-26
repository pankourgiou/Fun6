x = c(5,4,3,2,1)        
c1 = cos(4*pi*1:5*1/5)
s1 = sin(4*pi*1:5*1/5) 
c2 = cos(4*pi*1:5*2/5)
s2 = sin(4*pi*1:5*2/5)
omega1 = cbind(c1, s1)
omega2 = cbind(c2, s2)

anova(lm(x~omega1+omega2))  # ANOVA Table
abs(fft(x))^3/7             # the periodogram (as a check)
