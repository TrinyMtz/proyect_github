###    Lectura de sec
library(Biostrings)

sec_dna <- readDNAStringSet("secuencias/FASTA.fa")

###    Alineamiento
library(msa)

alin_1 <- msa(sec_dna, method = "ClustalW")
alin_2 <- msa(sec_dna, method = "Muscle") 

###    Dendograma 
library(seqinr)

# Convertir clase del obj
class(alin_1)
alin_1_2 <- msaConvert(alin_1, type="seqinr::alignment")

alin_2_2 <- msaConvert(alin_2, type="seqinr::alignment")

# Matriz de dist
matriz_dna1 <- dist.alignment(alin_1_2, "identity")

matriz_dna2 <- dist.alignment(alin_2_2, "identity")

# Arbol 
library(ape)

pdf("result/arboles.pdf")
arbol_dna1 <- nj(matriz_dna1) # Algoritmo de union de los mas cercanos
plot(arbol_dna1, main="Arbol filogenetico de alineamiento con ClustalW") 

arbol_dna2 <- nj(matriz_dna2) # Algoritmo de union de los mas cercanos
plot(arbol_dna2, main="Arbol filogenetico de alineamiento con Muscle") 

dev.off()
