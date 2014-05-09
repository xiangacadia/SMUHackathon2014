library(RColorBrewer)
d<-read.csv("/Users/xiangjiang/Dropbox/SMU Hackathon 2014/predictions/rank_matrix.csv",header = FALSE)
d<-as.matrix(d)

jBuPuFun <- colorRampPalette(c('white','black'))#(brewer.pal(n = 10, "Blue"))
paletteSize <- 256
jBuPuPalette <- jBuPuFun(paletteSize)
heatmap(d, Rowv = NA, Colv = NA, scale = "none", col = jBuPuPalette)