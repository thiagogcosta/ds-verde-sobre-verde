#Calcular o teste de Wilcoxon:
  
file <- read.csv('df_valores_preditos_praga.csv', header=TRUE, sep=',', stringsAsFactors=FALSE)

rf <- file$y_rf
svm <- file$y_svm
dt <- file$y_dt
nv <- file$y_nb
lr <- file$y_rl

value <-c(svm, dt, rf, lr, nv)

n <- 5
k <- length(value)/5
len <- length(value)

z <- gl(n,k,len,labels = c("svm","dt", "rf", "rl", "nv"))

w <- pairwise.t.test(value, z, exact = FALSE)
p_values <- w$p.value

print(p_values)
write.csv(p_values,file='t-test-praga.csv')