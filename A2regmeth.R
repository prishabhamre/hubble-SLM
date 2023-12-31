plot(hubble.data[,1],hubble.data[,2],main="Distance of Galaxies from Earth vs. Recession Velocities",xlab="distance (in megaparsecs)",ylab="recession velocity (in km/sec)")
hub.fit<-lm(recession_velocity~distance,data=hubble.data)
abline(hub.fit$coe[1], hub.fit$coe[2], col = 2)
summary(hub.fit)
predict(hub.fit, data.frame(distance= 0.77))
predict(hub.fit, data.frame(distance= 0.77), interval='prediction',level = 0.95)
