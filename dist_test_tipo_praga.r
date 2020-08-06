install.packages("dgof")
library(dgof)
install.packages("nortest")
library(nortest)

file <- read.csv('df_valores_preditos_tipo_praga.csv', header=TRUE, sep=',', stringsAsFactors=FALSE)

rf <- file$y_rf
svm <- file$y_svm
dt <- file$y_dt
nb <- file$y_nb
rl <- file$y_rl

rf_norm <- rnorm(rf)
svm_norm <- rnorm(svm)
dt_norm <- rnorm(dt)
nb_norm <- rnorm(nv)
rl_norm <- rnorm(rl)

ad_nb <- ad.test(rf_norm)
nb_p <- ad_nb$p.value

ad_svm <- ad.test(svm_norm)
svm_p <- ad_svm$p.value 

ad_dt <- ad.test(dt_norm)
dt_p <- ad_dt$p.value

ad_rf <- ad.test(nv_norm)
rf_p <- ad_rf$p.value

ad_rl <- ad.test(rl_norm)
rl_p <- ad_rl$p.value

ksframe <- data.frame('svm' = svm_p, 'rl' = rl_p, 'rf' = rf_p, 'dt' = dt_p, 'nv' = nv_p)

print(ksframe)

write.csv(ksframe,file='anderson_darling-test-tipo-praga.csv')