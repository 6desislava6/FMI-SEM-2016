sd_test = function (x){
  if(length(x) < 2){
    return(0);
  }
  return(sqrt(sum((x - mean(x))^2)/(length(x) - 1)));
}

b = seq(1, 10);
which(b==1);
# е същото като
(1:length(b))[b==1];

# Задача 2:
x = c(17, 16, 20, 18, 22, 15, 21, 15, 17, 22)
x[which(x==24)] = 18
# Или
x[x==24] = 18
sum(x >= 20)
sum(x >= 20) / length(x)

# 2.6
x = c(1, 8, 2, 6, 3, 8, 5, 5, 5, 5)