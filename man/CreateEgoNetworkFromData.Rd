% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/CreateEgoNetworkFromData.R
\name{CreateEgoNetworkFromData}
\alias{CreateEgoNetworkFromData}
\title{Create 'ego' networks from social media data}
\usage{
CreateEgoNetworkFromData(x, writeToFile)
}
\arguments{
\item{x}{a data.frame of class \code{dataSource.*.ego}}

\item{writeToFile}{logical. If \code{TRUE} then the network is saved to file
in current working directory (GRAPHML format), with filename denoting the
current date/time and the type of network.}
}
\value{
An igraph graph object, with directed and weighted edges.
}
\description{
This function creates 'ego' networks from social media data as a data.frame
of class \code{dataSource.*.ego}. The networks are igraph objects.
}
\note{
Similarly named function \code{CreateEgoNetwork} is a function of both
collecting data from social media and creating ego network. The current
function only creates ego network out of collected social media data.
}
\examples{

\dontrun{
myAppID <- "123456789098765"
myAppSecret <- "abc123abc123abc123abc123abc123ab"
instagram_oauth_token <- AuthenticateWithInstagramAPI(appID=myAppID,
appSecret=myAppSecret, useCachedToken=TRUE)
myUsernames <- c("senjohnmccain","obama")
instagramEgodata <- CollectEgoInstgram(username=myUsernames,
verbose=TRUE,degreeEgoNet=1,
waitForRateLimit=TRUE,getFollows=FALSE)
CreateEgoNetoworkFromData(instagramEgodata)
## the same as Create(instagramEgodata) or Create(instagramEgodata, "ego")
}

}
\author{
Timothy Graham <timothy.graham3@uq.net.au>, Robert
Ackland<robert.ackland@anu.edu.au> & Chung-hong Chan
<chainsawtiney@gmail.com>
}

