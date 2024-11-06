# BiocManager::install("ggtree")
library(ggtree)
library(ggplot2)
library(treeio)
library(ggtree)

arbol_dna1 <- nj(matriz_dna1) # Del ej anterior
arbol_dna2 <- nj(matriz_dna2) # Del ejercicio anterior

arbol_dna1

pdf("result/arbol1_con_ggtree")

ggtree(arbol_dna1, layout="circular", color="#0808E5") + geom_tiplab(color='green') + 
  geom_nodepoint(color="red") + geom_rootedge(rootedge = 0.5)

#  theme(legend.position="right")

ggtree(arbol_dna1, color="#0808E5") + geom_tiplab(color='grey30', aes(label=label), offset = .01) + 
  geom_nodepoint(color="red") + geom_rootedge(rootedge = 0.5)

dev.off()


