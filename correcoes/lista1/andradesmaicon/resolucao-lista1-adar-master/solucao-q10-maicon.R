################# script para a solução da questão 10 #########################

#alterar diretório de trabalho
setwd("/home/maicon/lista1-adar-maicon")
getwd()

#########################################################################
# questão 7: valores atualizados para T = 30°C e UR = 30 %

Temp <- 30
um_rel <- 30

T_w <- Temp*atan(0.151977*(um_rel+8.313659)^{1/2})+
  atan(Temp+um_rel)-
  atan(um_rel-1.676331)+
  0.00391838*(um_rel)^{3/2}*atan(0.023101*um_rel)-
  4.686035

options(digits = 7)
(T_w)

# arredondando a temperatura obtida
T_bulbo <- round(T_w, 2)
(T_bulbo)

###############################################################################
# questão 8: valores atualizados para SI=13%, CL=37%, Db=1.3 (gcm−3), Me=21

si <- 13
cl <- 37
db <- 1.3
me <- 21

x14 <- -1.05501 + 0.0650857*si

x15 <- -2.07588 + 0.0423954*cl

x16 <- -6.03402 + 4.80572*db

x17 <- -2.18409 + 8.84963*me/100

z9 <- 0.175202 + 1.18513*x17 - 0.0996042*(x17^2) + 0.327915*x16 -
  0.0758657*(x16^2)

z10 <- 0.929344*z9 + 0.132519*x14

theta10 <- 0.339255 + 0.112526*z10

z11 <- 0.191452 + 1.25652*x17 - 0.079098*(x17^2) + 0.393814*x16 +
  0.152095*x17*x16

theta33 <-0.28951 + 0.103815*z11

z13 <- 0.235084 + 0.33033*x15 - 0.191838*(x15^2) + 0.0543679*(x15^3) +
  0.977685*x17 + 0.304174*x15*x17 - 0.218857*(x17^2) - 0.164373*x15*(x17^2) +
  0.0415057*(x17^3) + 0.373361*x16 + 0.0811861*x17*x16 - 0.0768087*x15*x17*x16

theta1500 <- 0.214008 + 0.0862945*z13

print("Umidade do solo no potencial hídrico de 10kPa")
print(c("theta10", theta10))

print("Umidade do solo na capacidade de campo")
print(c("theta33", theta33))

print("Umidade do solo no ponto de murcha permanente")
print(c("theta1500", theta1500))

# valores arredondados ------------------------------------------------

#theta10
theta_10 <- round(theta10, 2)
print(c("theta_10", theta_10))

#theta33
theta_33 <- round(theta33, 2)
print(c("theta_33", theta_33))

#theta1500
theta_1500 <- round(theta1500, 2)
print(c("theta_1500", theta_1500))

#################################################################

sessionInfo()
