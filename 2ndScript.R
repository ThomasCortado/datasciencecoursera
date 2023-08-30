#Chargement des données ----

#Charger l'extension questionr
library(questionr)

#Charger le jeu de données
data(hdv2003)

#Copier le jeu de données dans un nouvel objet nommé df
df=hdv2003

#Afficher les dimensions et la liste des variables de df
dim(df)
names(df)

#Analyse des données ----

#Principaux indicateurs de visionnage de la télévision
summary(df$heures.tv)
hist(df$heures.tv, breaks=5)

#Trier la variable trav
table(df$trav.imp)
freq(df$trav.imp)
barplot(table(df$trav.imp), col="tomato")

#Croiser les variables
tab=table(d$qualif, d$sexe)
cprop(tab)

#Effectuer un test du khi-deux
chisq.test(tab)

#Mesurer la distance khi-deux
chisq.residuals(tab)

#Représenter graphiquement le tri croisé
mosaicplot(tab, shade = TRUE, las=3)
boxplot(d$age~d$sport)

#Filtrer les variables pour le tri croisé
d_sport <- filter(d, sport == "Oui")
d_nonsport <- filter(d, sport == "Non")
mean(d_sport$age)
mean(d_nonsport$age)
tapply(d$age, d$sport, mean)

#Tester les hypothèses----


#Èvaluer la normalité de la variable
hist(d_sport$age)
hist(d_nonsport$age)

#Effectuer un test d'indépendance de Student
t.test(d$age ~ d$sport)

#Effectuer un test d'indépendance de Wilcox
wilcox.test(d$age ~ d$sport)

hdv_chom=filter(hdv2003, occup==(levels(hdv2003$occup)[2]))

                



