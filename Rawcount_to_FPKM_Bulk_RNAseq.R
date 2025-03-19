library(RNAAgeCalc)
data<-read.csv('/DATA05/home/youwone/GSE283829_bulk/GSE283829_raw_express_matrix_all_samples.txt',sep='\t')
data(countExample)
head(rawcount)
fpkm = count2FPKM(data,idtype = "ENSEMBL")
head(fpkm)


write.csv(fpkm, "/DATA05/home/youwone/GSE283829_bulk/GSE283829_FPKM_matrix_all_samples.csv", row.names = TRUE)

