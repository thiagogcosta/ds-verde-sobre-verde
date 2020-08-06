install.packages("dgof")
library(dgof)
install.packages("nortest")
library(nortest)

file <- read.csv('df_valores_preditos_praga.csv', header=TRUE, sep=',', stringsAsFactors=FALSE)

rf <- file$y_rf
svm <- file$y_svm
dt <- file$y_dt
nb <- file$y_nb
rl <- file$y_rl

ad_nb <- shapiro.test(rf)
nb_p <- ad_nb$p.value

ad_svm <- shapiro.test(svm)
svm_p <- ad_svm$p.value 

ad_dt <- shapiro.test(dt)
dt_p <- ad_dt$p.value

ad_rf <- shapiro.test(nb)
rf_p <- ad_rf$p.val

ad_rl <- shapiro.test(rl)
rl_p <- ad_rl$p.val

ksframe <- data.frame('svm' = svm_p, 'rl' = rl_p, 'rf' = rf_p, 'dt' = dt_p, 'nv' = nv_p)

print(ksframe)

write.csv(ksframe,file='anderson_darling-test-praga.csv')