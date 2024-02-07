library(diversitree)

p<-starting.point.bisse(gt)
p
## create constrained null model
bissenull.model2<-constrain(bisse.model,mu1~mu0)
## optimize null model
bissenull.mle2<-find.mle(bissenull.model2,p[c(-4)])

coef(bissenull.mle2)
logLik(bissenull.mle2)

## run likelihood-ratio test
bisseAnova2<-anova(bissenull.mle2,null=bissenull.mle)
bisseAnova2

aicw(setNames(bisseAnova2$AIC,rownames(bisseAnova2)))
