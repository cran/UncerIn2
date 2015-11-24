\name{uncertaintyInterpolation2-information}
\alias{Uncertainty Interpolation 2-package}
\docType{package}
\title{
Implements models of uncertainty into the interpolation functions
}
\description{
This package is the main result of diploma thesis. It can provide a basic (random) data, grids, 6 models of uncertainty, 3 automatic interpolations (idw, spline, kriging), variogram and basic data visualization. All together it could make a basic tools to solve the problem of uncertainty in this world.
}
\details{
\tabular{ll}{
Package: \tab uncertaintyInterpolation2\cr
Type: \tab Package\cr
Version: \tab 2.0\cr
Date: \tab 2015-11-10\cr
License: \tab R (>= 3.0.0)\cr
LazyLoad: \tab yes\cr
}

}
\author{
Tomas Burian <Buri777@seznam.cz>

Maintainer: Tomas Burian <Buri777@seznam.cz>
}

\references{
BURIAN, T. EXTENSION OF INTERPOLATION  TOOLS IN R PROJECT  BY MODELS OF UNCERTAINTY. Univerzita Palackeho v Olomouci, 2013.

CAHA, J. Fuzzy Surface Analyses: First Experiments. Olomouc : Terra Notitia,
Palacky University for Department of Geoinformatics, 1st ed. edition, 2015. ISBN
978-80-244-4055-2.

CAHA, J., MAREK, L., DVORSKY, J. (in print) Predicting PM10 concentrations
using fuzzy kriging. In Hybrid Artificial Intelligent Systems. Springer, 2015.

FISHER, P. F., TATE, N. J. Causes and consequences of error in digital elevation
models. Progress in Physical Geography, 30, 4, p. 467 to 489, August 2006. ISSN
03091333.

CHAMBERS, J. M. Programming with Data A Guide to the S Language. Springer-
Verlag, 1998.

HEUVELINK, G. B. M. Analysing Uncertainty Propagation in GIS: Why is it not
that Simple? In FOODY, G. M., ATKINSON, P. M. (Ed.) Uncertainty in remote
sensing and GIS, s. 307. Chichester : Wiley, 2002. ISBN 0470844086.

HIEMSTRA, P., PEBESMA, E., TWENHOFEL, C., HEUVELINK, G. Realtime
automatic interpolation of ambient gamma dose rates from the dutch
radioactivity monitoring network. Computers & Geosciences, 2008. DOI:
http://dx.doi.org/10.1016/j.cageo.2008.10.011.

LODWICK, W., ANILE, M., SPINELLA, S. Introduction. In LODWICK, W.
(Ed.) Fuzzy surfaces in GIS and geographical analysis : theory, analytical methods,
algorithms, and applications, p. 1 to 46. Boca Raton : CRC Press, 2008. ISBN
9780849363955.

MATLOFF, N. THE ART OF R PROGRAMMING A Tour of Statistical Software
Design. William Pollock, 2011.

OKSANEN, J. Digital Elevation Model Error in Terrain Analysis. PhD thesis, University
of Helsinki, 2006.

R Core Team. R: A Language and Environment for Statistical Computing. R Foundation
for Statistical Computing, Vienna, Austria, 2013. Dostupne z: http:
//www.R-project.org.

VIERTL, R. Statistical methods for fuzzy data. Chichester, West Sussex : Wiley,
2011. ISBN 9780470699454.

WAELDER, O. An application of the fuzzy theory in surface interpolation and surface
deformation analysis. Fuzzy Sets and Systems, 158, 14, p. 1535 to 1545, July 2007.
}
\keyword{ package }

\seealso{\code{\link[UncerIn2]{TUTORIAL}}
\url{http://www.r-project.org}}

\examples{
# dataset meuse import
data(meuse)

# S4 class object Points input data definition
points = Points(x = meuse$x, y = meuse$y, z = meuse$elev)

# building uncertainty model (based on uncertaintyError function)
uncertaintyModel = uncertaintyError(points)

# generate grid for IDW interpolation
gridDef.spat = Grid.def(points, TRUE) # SpatialPixels

# IDW interpolation process
IDW = idwUncertain(uncertaintyModel, gridDef.spat)

# visualization of results
Plot(IDW)
}
