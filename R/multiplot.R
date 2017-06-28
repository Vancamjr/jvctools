# Multiple plot function
#
# ggplot objects can be passed in ..., or to plotlist (as a list of ggplot objects)
# - cols:   Number of columns in layout
# - layout: A matrix specifying the layout. If present, 'cols' is ignored.
#
# If the layout is something like matrix(c(1,2,3,3), nrow=2, byrow=TRUE),
# then plot 1 will go in the upper left, 2 will go in the upper right, and
# 3 will go all the way across the bottom.
#
# see http://www.cookbook-r.com/Graphs/Multiple_graphs_on_one_page_%28ggplot2%29/
#

#' multiplot() Multiple plot function
#'
#' @param ... other parameters passed from ggplot
#' @param plotlist a list of ggplots
#' @param cols number of columns in the output grid
#' @param layout a matrix describing layout of the output
#'
#' @return a page layout of ggplots
#' @export
#'
#' @examples
#' library(ggplot2)
#' p1 <- ggplot(ChickWeight, aes(x=Time, y=weight, colour=Diet, group=Chick)) +
#' geom_line() +
#' ggtitle("Growth curve for individual chicks")
#' p2 <- ggplot(ChickWeight, aes(x=Time, y=weight, colour=Diet)) +
#' geom_point(alpha=.3) +
#' geom_smooth(alpha=.2, size=1) +
#' ggtitle("Fitted growth curve per diet")
#' p3 <- ggplot(subset(ChickWeight, Time==21), aes(x=weight, colour=Diet)) +
#' geom_density() +
#' ggtitle("Final weight, by diet")
#' p4 <- ggplot(subset(ChickWeight, Time==21), aes(x=weight, fill=Diet)) +
#' geom_histogram(colour="black", binwidth=50) +
#' facet_grid(Diet ~ .) +
#' ggtitle("Final weight, by diet") +
#' theme(legend.position="none")
#' multiplot(p1,p2,p3,p4,cols=2)

multiplot <- function(..., plotlist=NULL, file, cols=1, layout=NULL) {
    require(grid)
    require(ggplot2)

    # Make a list from the ... arguments and plotlist
    plots <- c(list(...), plotlist)

    numPlots = length(plots)

    # If layout is NULL, then use 'cols' to determine layout
    if (is.null(layout)) {
        # Make the panel
        # ncol: Number of columns of plots
        # nrow: Number of rows needed, calculated from # of cols
        layout <- matrix(seq(1, cols * ceiling(numPlots/cols)),
                         ncol = cols, nrow = ceiling(numPlots/cols))
    }

    if (numPlots==1) {
        print(plots[[1]])

    } else {
        # Set up the page
        grid.newpage()
        pushViewport(viewport(layout = grid.layout(nrow(layout), ncol(layout))))

        # Make each plot, in the correct location
        for (i in 1:numPlots) {
            # Get the i,j matrix positions of the regions that contain this subplot
            matchidx <- as.data.frame(which(layout == i, arr.ind = TRUE))

            print(plots[[i]], vp = viewport(layout.pos.row = matchidx$row,
                                            layout.pos.col = matchidx$col))
        }
    }
}
