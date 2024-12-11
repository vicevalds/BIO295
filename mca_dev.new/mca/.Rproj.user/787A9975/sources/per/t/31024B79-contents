library(ca)
library(ggplot2)

path <- "/home/vice/Documents/git/BIO295-save/mca_dev.new/out-tests"
data <- read.csv(file.path(path, "solo_por_familia.csv"))
data <- read.csv(file.path(path, "solo_agona_y_AMR_por_familia.csv"))
data <- read.csv(file.path(path, "solo_Typhimurium_y_AMR_por_familia.csv"))
data <- read.csv(file.path(path, "solo_serotipos_por_familia.csv"))
data <- read.csv(file.path(path, "solo_Infantis_y_AMR_por_familia.csv"))

path <- "/home/vice/Documents/git/BIO295-save/BIO295/out"
data <- read.csv(file.path(path, "MCA_table_v1.csv"))
data <- read.csv(file.path(path, "MCA_table_v2.csv"))

data <- read.csv(file.path(path, "MCA_table_for_Typhimurium.csv"))
data <- read.csv(file.path(path, "MCA_table_for_Newport.csv"))
data <- read.csv(file.path(path, "MCA_table_for_Enteritidis.csv"))
data <- read.csv(file.path(path, "MCA_table_for_Infantis.csv"))
data <- read.csv(file.path(path, "MCA_table_for_I 1,4,[5],12:i:-.csv"))
data <- read.csv(file.path(path, "MCA_table_for_Agona.csv"))

mca4 <- mjca(data)
plot(mca4)
summary(mca4)

cats = apply(data, 2, function(x) nlevels(as.factor(x)))
mca4_vars_df = data.frame(mca4$colcoord, Variable = rep(names(cats), cats))
rownames(mca4_vars_df) = mca4$levelnames
plot_mca <- ggplot(data = mca4_vars_df, aes(x = X1, y = X2, label = rownames(mca4_vars_df))) + 
  geom_hline(yintercept = 0, colour = "gray") +  
  geom_vline(xintercept = 0, colour = "gray") +  
  geom_text(aes(colour = Variable))

ggsave(file.path(path, "MCA_table_for_Typhimurium.png"), plot = plot_mca, width = 8, height = 6, dpi = 300)
ggsave(file.path(path, "MCA_table_for_Newport.png"), plot = plot_mca, width = 8, height = 6, dpi = 300)
ggsave(file.path(path, "MCA_table_for_Enteritidis.png"), plot = plot_mca, width = 8, height = 6, dpi = 300)
ggsave(file.path(path, "MCA_table_for_Infantis.png"), plot = plot_mca, width = 8, height = 6, dpi = 300)
ggsave(file.path(path, "MCA_table_for_I 1,4,[5],12:i:-.png"), plot = plot_mca, width = 8, height = 6, dpi = 300)
ggsave(file.path(path, "MCA_table_for_Agona.png"), plot = plot_mca, width = 8, height = 6, dpi = 300)
