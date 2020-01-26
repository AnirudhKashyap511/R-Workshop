library("gapminder")
data("gapminder")
summary(gapminder)
mean(gapminder$gdpPercap)
x<-mean(gapminder$gdpPercap)
attach(gapminder)
#attach makes it easier else you need to use gapminder$
mean(lifeExp)
hist(lifeExp)
hist(pop)
hist(log(pop))
boxplot(lifeExp~continent)
boxplot(lifeExp)
install.packages("forecast",
                 repos = c("http://rstudio.org/_packages",
                           "http://cran.rstudio.com"))
gapminder %>%
  select(country,lifeExp) %>%
  filter(country=="South Africa"|country=="Ireland")%>%
  group_by(country)%>%
  summarise(Average_life=mean(lifeExp))

#for graph
gapminder %>%
  filter(gdpPercap<5000) %>%
  ggplot(aes(x=gdpPercap,y=lifeExp))+
  geom_point(color='red')


gapminder %>%
  filter(gdpPercap<5000)%>%
  ggplot(aes(x=log(gdpPercap),y=lifeExp,col=continent,size=pop))+
  geom_point(alpha=1)