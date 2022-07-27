data()
datos<-iris
## General
regresion=ggplot(data = datos,aes(x=Petal.Width,y=Sepal.Length))+
  geom_point() +
  stat_smooth(formula = y ~ x,method = "lm", col = "red")+
  facet_grid(Species~.)
## regresion 2
datos1<-filter(datos,Species=="setosa")
regresion1=ggplot(data = datos1,aes(x=Petal.Width,y=Sepal.Length))+
  geom_point() +
  stat_smooth(formula = y ~ x,method = "lm", col = "blue")+
  ggtitle("setosa linear regression")
## regression 3
datos2<-filter(datos,Species=="versicolor")
regresion2=ggplot(data = datos2,aes(x=Petal.Width,y=Sepal.Length))+
  geom_point() +
  stat_smooth(formula = y ~ x,method = "lm", col = "green")+
  ggtitle("versicolor linear regression")
## regression 4
datos3<-filter(datos,Species=="virginica")
regresion2=ggplot(data = datos3,aes(x=Petal.Width,y=Sepal.Length))+
  geom_point() +
  stat_smooth(formula = y ~ x,method = "lm", col = "orange")+
  ggtitle("virginica linear regression")
