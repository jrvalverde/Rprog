TEST <- TRUE

f <- function(x) return(2*x^2 - 0.9*x - 1)

if (TEST) {
  f(0)
  f(1.5)
  plot(f)
  plot(f, from=-1, to=2)
}

g <- function(x) -4 * x^2 + 0.2 * x + 4

if (TEST) {
  plot(g, from=-1, to=2, add=T, col="red")
}


optimize(f, interval=c(-1,2))
optimize(g, interval=c(-1,2))
optimize(function(x) -g(x), interval=c(-1,2))

f1 <- function(x1,x2) return(-5 - 3*x1 + 4*x2 + x1^2 - x1*x2 + x2^2)

f1(0,0)
f1(1,2)

f2 <- function(x) return(-5 - 3*x[1] + 4*x[2] + x[1]^2 - x[1]*x[2] + x[2]^2)

f2(c(0,0))
f2(c(1,2))

x1 <- seq(0,2,length=51)
x1
x2 <- seq(-3,1, length=51)
x2
fVals <- outer(x1,x2,f1)
dim(fVals)
contour(x1,x2,fVals)


inhib <- read.table("inhib.csv",
	sep=";",
	header=T)

with(inhib, plot(S, R))

attach(inhib)

grp <- c(rep(1,times=12),
rep(2,times=12),
rep(3,times=12))

plot(S, R, col=grp)

plot(S, R, pch=grp)

plot(S, R, col=grp, pch=grp)


dat.i0 <- inhib[1:12, ]
mm.i0 <- nls(R ~ Vmax * S / (K + S),
	start = list(Vmax=3, K=100),
	data=dat.i0)

summary(mm.i0)

plot(fitted(mm.i0),
residuals(mm.i0))

plot(dat.i0$S, dat.i0$R)

mi.men.i0 <- function(S) 2.9811 * S / (35.853 + S)

plot(mi.men.i0, from=0, to=max(dat.i0), add=T)


mmi <- nls(R ~ Vmax * S / (K1 * (1 + (I/K2)) + S),
	start=list(Vmax=3, K1=100, K2=25), data=inhib[ -1:12,])
	summary(mmi)

plot(S, R, col=grp) # we already have grp
# for [ I ] = 0
fm <- function(S) 2.93828 * S / (33.99345 * (1 + 0 / 34.84463 ) + S)

plot(fm, from=0, to=620, add=T, col=1)

fm <- function(S) 2.93828 * S / (33.99345 * (1 + 50 / 34.84463 ) + S)

plot(fm, from=0, to=620, add=T, col=2)

fm <- function(S) 2.93828 * S / (33.99345 * (1 + 100 / 34.84463 ) + S)

plot(fm, from=0, to=620, add=T, col=3)

plot(mi.men.i0, from=0, to=620, add=T, col=1, lty=2)


sum.mmi <- summary(mmi)
coef <- sum.mmi$coefficients
Vmax <- coef['Vmax', 'Estimate']
K1 <- coef['K1', 'Estimate']
K2 <- coef['K2', 'Estimate']

m <- function(I, S) Vmax * S / 
             (K1 * (1 + I / K2 ) + S)

for (I in c(0, 50, 100))
    plot(function(S) m(I, S), from=0, to=620, add=T)


i=0
for (I in c(0, 50, 100)) {
    i = i + 1
    plot(function(S) m(I, S), from=0, to=620, add=T, col=i, pch=i)
}

