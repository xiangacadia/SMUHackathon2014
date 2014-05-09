library(RColorBrewer)
d<-read.csv("/Users/xiangjiang/Dropbox/SMU Hackathon 2014/predictions/rank_matrix.csv",header = FALSE)
d<-as.matrix(d)
d<-t(d)

par(xpd=NA,oma=c(0,0,0,15)) 

col <- c("NL", "PE","NS","NB","QC","ON","MB","SK","AB","BC")
row <- c("Agriculture forestry fishing and hunting"
         ,"Mining quarrying and oil and gas extraction"
         ,"Utilities"
         ,"Construction"
         ,"Manufacturing"
         ,"Trade"
         ,"Transportation and warehousing"
         ,"Information and cultural industries"
         ,"Finance and insurance"
         ,"Real estate and rental and leasing"
         ,"Professional scientific and technical services"
         ,"Management of companies and enterprises"
         ,"Administrative and remediation services"
         ,"Educational services"
         ,"Health care and social assistance"
         ,"Arts entertainment and recreation"
         ,"Accommodation and food services"
         ,"Other services (except public administration)"
         ,"Public administration")

jBuPuFun <- colorRampPalette(c('white','black'))#(brewer.pal(n = 10, "Blue"))
paletteSize <- 256
jBuPuPalette <- jBuPuFun(paletteSize)
heatmap(d, Rowv = NA, Colv = NA, scale = "none", col = jBuPuPalette, labRow = row, labCol = col)