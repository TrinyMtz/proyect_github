# BiocManager::install("ggtree")
library(ggtree)
library(ggplot2)
library(treeio)
library(ggtree)

arbol_dna1 <- nj(matriz_dna1) # Del ej anterior
arbol_dna2 <- nj(matriz_dna2) # Del ejercicio anterior

arbol_dna1

# pdf("result/arbol1_con_ggtree.pdf")

ggtree(arbol_dna1, layout="circular", color="#0808E5") + geom_tiplab(color='green') + 
  geom_nodepoint(color="red") + geom_rootedge(rootedge = 0.5)

ggtree(arbol_dna1, color="#0808E5", layout = "slanted") + geom_tiplab(color='grey30', aes(label=label), offset = .01) + 
  geom_nodepoint(color="red") + geom_rootedge(rootedge = 0.5) # + theme(legend.position="right")

# dev.off()


#####         CLASE 06/11/2024
library(ggtree)
library(ape)

# Arbol simple
arb_1 <- rtree(10)
str(arb_1) # Lsita de lo qeu tiene
arb_1$tip.label <- LETTERS[1:10] # Camb etiquetas

ggtree(arb_1)

# Arbol con dif parametros


# Arb de represent circular
ggtree(arb_1, layout = "circular") + 
  geom_tiplab(size = 3)

# Arbl con seleccion de clados
arb_2 <- ggtree(arb_1) + geom_tiplab() + geom_nodepoint(color="#b5e521", alpha=1/4, size=10) 
arb_2 + geom_tippoint(color="#FDAC4F", shape=5, size=3)

# Colores por clados
ggtree(arb_1) + geom_tiplab() + 
  
# Guardado
guradado <- ggtree(arbol_1) + geom_tiplab() # Se agregan todas las etiquetas
ggsave("result/arbol_con_ggtree.png", plot = p, width = 8, height = 6)





### EJ con mi ARBOL
arbol_dna1

str(arbol_dna1)

arb_dna1 <- ggtree(arbol_dna1, layout="ellipse", branch.length="none")+ geom_tiplab(color='red', size = 2) + 
  geom_nodepoint(color="grey30", alpha=1/4, size=10) 
arb_dna1 + geom_tippoint(color="pink", shape=5, size=9)

arb_dna1 <- ggtree(arbol_dna1, layout="ellipse", branch.length="none", color="#0808E5", size=1)+ geom_tiplab(color='red', size = 2) + 
  geom_nodepoint(color="grey30", alpha=1/4, size=10) 
arb_dna1 + geom_tippoint(color="pink", shape=5, size=9)

ggsave("result/arbol1_ggtree.png", plot = arb_dna1, width = 10, height = 10)
