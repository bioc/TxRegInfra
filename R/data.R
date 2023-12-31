#' basicColData: metadata about a small collection of files for demonstrating TxRegInfra
#' @importFrom utils data
#' @docType data
#' @format DataFrame from S4Vectors
#' @examples
#' data(basicColData)
#' head(basicColData)
"basicColData"
#' dgf_meta: metadata about a small collection of bed files for demonstrating TxRegInfra
#' @importFrom utils data
#' @docType data
#' @format data.frame
#' @examples
#' data(dgf_meta)
#' head(dgf_meta)
"dgf_meta"
#' ragged41FP: A RaggedExperiment instance with digital genomic footprints over the coding region of ORMDL3
#' @docType data
#' @format DataFrame
#' @note The text on plot refers to FOS = 'footprint occupancy score'
#' as in Neph et al, Nature 489, 6 Sept 2012 p 84.
#' @examples
#' data(ragged41FP)
#' ragged41FP
#' dim(ca <- compactAssay(ragged41FP,3)) # stat
#' dim(sparseAssay(ragged41FP,3)) # stat
#' opar = par(no.readonly=TRUE)
#' par(mar=c(4,11,4,3), bg='lightgray')
#' image(ca, 
#'     main='over ORMDL3', axes=FALSE)
#' labs = gsub('_DS.*._hg19_FP', '', colnames(ragged41FP))
#' axis(2, at=seq(0,1,length=41), ylab='41 tissues', 
#'     labels=labs, cex.axis=.6, las=2)
#' mtext('positions on chr17 not to scale\n(red = lower FOS = stronger binding capacity)', 1, line=1)
#' \dontrun{ # if (interactive()) {
#'   m1 = mongolite::mongo(url=URL_txregInAWS(), db='txregnet')
#'   cd = makeColData(url=URL_txregInAWS(), db='txregnet')
#'   rme1 = RaggedMongoExpt(m1, cd[which(cd$type=='FP'),])
#'   BiocParallel::register(BiocParallel::SerialParam()) # necessary for mac?
#'   raggHHIP = sbov(rme1, GRanges('chr4', IRanges(145565173, 145605173)))
#'   ca = compactAssay(raggHHIP,3)[seq_len(200),]
#'   image(ca, main='over HHIP', axes=FALSE)
#'   labs = gsub('_DS.*._hg19_FP', '', colnames(ca))
#'   axis(2, at=seq(0,1,length=ncol(ca)), ylab=paste(ncol(ca), 'tissues'), 
#'     labels=labs, cex.axis=.6, las=2)
#'   mtext('positions on chr4 not to scale\n(red = lower FOS = stronger binding capacity', 1, line=1)
#' #  }
#' }
#' par(opar)
"ragged41FP"
#' oldbasicColData: metadata about a small collection of files for demonstrating TxRegInfra
#' @importFrom utils data
#' @docType data
#' @format DataFrame from S4Vectors
#' @examples
#' data(oldbasicColData)
#' head(oldbasicColData)
"oldbasicColData"
#' metadata about DNaseI hotspots from ENCODE
#' @docType data
#' @format data.frame
#' @examples
#' data(dnmeta)
#' head(dnmeta[,1:10])
"dnmeta"

#' a GRanges instance with eQTL metadata returned by `sbov`
#' @docType data
#' @format a GRanges instance
#' @examples
#' names(mcols(demo_eQTL_granges))
"demo_eQTL_granges"

#' a GRanges instance with DnaseI hotspot metadata returned by `sbov`
#' @docType data
#' @format a GRanges instance
#' @examples
#' head(sbov_output_HS)
"sbov_output_HS"

#' a GRanges instance with digital genomic footprint metadata returned by `sbov`
#' @docType data
#' @format a GRanges instance
#' @examples
#' head(sbov_output_FP)
"sbov_output_FP"

#' a GRanges instance with eQTL metadata returned by `sbov`
#' @docType data
#' @format a GRanges instance
#' @examples
#' head(sbov_output_eQTL)
"sbov_output_eQTL"

#' a list of GRanges instances with TF FIMO scores returned by `fimo_granges`
#' @docType data
#' @format a list of GRanges instances
#' @examples
#' names(demo_fimo_granges)
#' head(mcols(demo_fimo_granges$VDR[[1]]))
"demo_fimo_granges"
