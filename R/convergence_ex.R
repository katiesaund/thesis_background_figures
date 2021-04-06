library(ape)
set.seed(1)
tree <- rcoal(12)
label_offset <- 10
edge_width <- 10
edge_index <- 1:Nedge(tree)
tip_index <- 1:Ntip(tree)
node_index <- (Nnode(tree) + 2):(Nnode(tree) + Ntip(tree))
wid <- 5
ht <- 4.5
sz <- 2
rz <- 200

png("convergence_1.png", 
    width = wid,
    height = ht,  
    units = "in", 
    res = rz)
tip_colors <- c("black", 
                "black", 
                "black", 
                "black", 
                "black", 
                "red",
                "red",
                "red",
                "red",
                "red",
                "black", 
                "black")
plot(tree, 
     edge.width = edge_width, 
     edge.color = "gray",
     use.edge.length = FALSE, 
     label.offset = label_offset, 
     show.tip.label = FALSE)
tiplabels(tip = tip_index, 
          col = tip_colors, 
          pch = 19, 
          cex = sz)
nodelabels(node = node_index, pch = 19, cex = sz,
           col = "grey",
           bg = "grey", 
           frame = "none")
dev.off()

png("convergence_2.png", 
    width = wid,
    height = ht,  
    units = "in", 
    res = rz)
tip_colors <- c("black", 
                "black", 
                "black", 
                "black", 
                "black", 
                "red",
                "red",
                "red",
                "red",
                "red",
                "black", 
                "black")
plot(tree, 
     edge.width = edge_width, 
     edge.color = c(rep("black", 10), 
                    rep("red", 9), 
                    rep("black", 3)),
     use.edge.length = FALSE, 
     label.offset = label_offset, 
     show.tip.label = FALSE)
tiplabels(tip = tip_index, 
          col = tip_colors, 
          pch = 19, 
          cex = sz)
nodelabels(node = node_index, pch = 19, cex = sz,
           col = c(rep("black", 5), 
                   "red", "red", "black", "black", "red", "red"),
           bg = "grey", 
           frame = "none")
dev.off()

png("convergence_3.png", 
    width = wid,
    height = ht,  
    units = "in", 
    res = rz)
tip_colors <- c("black", 
                "black", 
                "red", 
                "black", 
                "red", 
                "black",
                "red",
                "black",
                "red",
                "black",
                "red", 
                "black")
plot(tree, 
     edge.width = edge_width, 
     edge.color = c(rep("black", 4), 
                    "red", 
                    rep("black", 3), 
                    "red", 
                    rep("black", 4), 
                    "red", 
                    rep("black", 3), 
                    "red", 
                    "black", 
                    "black", 
                    "red", "black"),
     use.edge.length = FALSE, 
     label.offset = label_offset, 
     show.tip.label = FALSE)
tiplabels(tip = tip_index, 
          col = tip_colors, 
          pch = 19, 
          cex = sz)
nodelabels(node = node_index, pch = 19, cex = sz,
           col = "black",
           bg = "grey", 
           frame = "none")
dev.off()



png("convergence_4.png", 
    width = wid,
    height = ht,  
    units = "in", 
    res = rz)
tip_colors <- c("black", 
                "black", 
                "red", 
                "black", 
                "red", 
                "black",
                "red",
                "black",
                "red",
                "black",
                "red", 
                "black")
plot(tree, 
     edge.width = edge_width, 
     edge.color = "grey",
     use.edge.length = FALSE, 
     label.offset = label_offset, 
     show.tip.label = FALSE)
tiplabels(tip = tip_index, 
          col = tip_colors, 
          pch = 19, 
          cex = sz)
nodelabels(node = node_index, pch = 19, cex = sz,
           col = "grey",
           bg = "grey", 
           frame = "none")
dev.off()


# Clonal resistance with blue triangles
png("convergence_5.png", 
    width = wid,
    height = ht,  
    units = "in", 
    res = rz)
tip_colors1 <- c("black", 
                "black", 
                "black", 
                "black", 
                "black", 
                "red",
                "red",
                "red",
                "red",
                "red",
                "black", 
                "black")

tip_colors2 <- c("black", 
                 "black", 
                 "black", 
                 "black", 
                 "black", 
                 "blue",
                 "blue",
                 "blue",
                 "blue",
                 "blue",
                 "black", 
                 "black")
plot(tree, 
     edge.width = edge_width, 
     edge.color = c(rep("black", 10), 
                    rep("red", 9), 
                    rep("black", 3)),
     use.edge.length = FALSE, 
     label.offset = label_offset, 
     show.tip.label = FALSE)
tiplabels(tip = tip_index, 
          col = tip_colors1, 
          pch = 19, 
          cex = sz)
tiplabels(tip = tip_index[tip_colors2 == "blue"], 
          col = "blue", 
          pch = 17, offset = 0.3, 
          cex = sz * .5)
nodelabels(node = node_index, pch = 19, cex = sz,
           col = c(rep("black", 5), 
                   "red", "red", "black", "black", "red", "red"),
           bg = "grey", 
           frame = "none")
dev.off()

# non-clonal resistance with triangeles
png("convergence_6.png", 
    width = wid,
    height = ht,  
    units = "in", 
    res = rz)
tip_colors1 <- c("black", 
                "black", 
                "red", 
                "black", 
                "red", 
                "black",
                "red",
                "black",
                "red",
                "black",
                "red", 
                "black")
tip_colors2 <- c("black", 
                "black", 
                "blue", 
                "black", 
                "blue", 
                "black",
                "blue",
                "black",
                "blue",
                "black",
                "blue", 
                "black")
plot(tree, 
     edge.width = edge_width, 
     edge.color = c(rep("black", 4), 
                    "red", 
                    rep("black", 3), 
                    "red", 
                    rep("black", 4), 
                    "red", 
                    rep("black", 3), 
                    "red", 
                    "black", 
                    "black", 
                    "red", "black"),
     use.edge.length = FALSE, 
     label.offset = label_offset, 
     show.tip.label = FALSE)
tiplabels(tip = tip_index, 
          col = tip_colors1, 
          pch = 19, 
          cex = sz)
tiplabels(tip = tip_index[tip_colors2 == "blue"], 
          col = "blue", 
          pch = 17, offset = 0.3, 
          cex = sz * .5)
nodelabels(node = node_index, pch = 19, cex = sz,
           col = "black",
           bg = "grey", 
           frame = "none")
dev.off()

# Fisher's exact
dat <- matrix(c(7, 0, 0, 5), nrow = 2, ncol = 2)
pval1 <- fisher.test(dat)
p.adjust(c(pval1$p.value, pval1$p.value), method = "bonf")
# Clonal blue triangles
png("convergence_7.png", 
    width = wid,
    height = ht,  
    units = "in", 
    res = rz)
tip_colors <- c("black", 
                 "black", 
                 "black", 
                 "black", 
                 "black", 
                 "blue",
                 "blue",
                 "blue",
                 "blue",
                 "blue",
                 "black", 
                 "black")
plot(tree, 
     edge.width = edge_width, 
     edge.color = c(rep("black", 10), 
                    rep("blue", 9), 
                    rep("black", 3)),
     use.edge.length = FALSE, 
     label.offset = label_offset, 
     show.tip.label = FALSE)
tiplabels(tip = tip_index[tip_colors == "blue"], 
          col = "blue", 
          pch = 17, 
          cex = sz)
nodelabels(node = node_index, pch = 19, cex = sz,
           offset = 0.15,
           col = c(rep("black", 5), 
                   "blue", "blue", "black", "black", "blue", "blue"),
           bg = "grey", 
           frame = "none")
dev.off()



# non-clonal resistance with triangeles
png("convergence_8.png", 
    width = wid,
    height = ht,  
    units = "in", 
    res = rz)
tip_colors <- c("black", 
                 "black", 
                 "blue", 
                 "black", 
                 "blue", 
                 "black",
                 "blue",
                 "black",
                 "blue",
                 "black",
                 "blue", 
                 "black")
plot(tree, 
     edge.width = edge_width, 
     edge.color = c(rep("black", 4), 
                    "blue", 
                    rep("black", 3), 
                    "blue", 
                    rep("black", 4), 
                    "blue", 
                    rep("black", 3), 
                    "blue", 
                    "black", 
                    "black", 
                    "blue", "black"),
     use.edge.length = FALSE, 
     label.offset = label_offset, 
     show.tip.label = FALSE)
tiplabels(tip = tip_index[tip_colors == "blue"], 
          col = "blue", cex = sz, offset = 0.15,
          pch = 17)
nodelabels(node = node_index, pch = 19, cex = sz,
           col = "black",
           bg = "grey", 
           frame = "none")
dev.off()


# Transitions for the first time
# Clonal blue triangles transition
png("transition_1.png", 
    width = wid,
    height = ht,  
    units = "in", 
    res = rz)
tip_colors <- c("black", 
                "black", 
                "black", 
                "black", 
                "black", 
                "blue",
                "blue",
                "blue",
                "blue",
                "blue",
                "black", 
                "black")
trans_color <- c(rep("grey", 10), 
                 "orange", 
                 rep("grey", 11))
plot(tree, 
     edge.width = edge_width, 
     edge.color =  trans_color,
     use.edge.length = FALSE, 
     label.offset = label_offset, 
     show.tip.label = FALSE)
tiplabels(tip = tip_index[tip_colors == "blue"], 
          col = "blue", offset = 0.15, 
          pch = 17, 
          cex = sz)
nodelabels(node = node_index, pch = 19, cex = sz,
           col = c(rep("black", 5), 
                   "blue", "blue",
                   "black", "black",
                   "blue", "blue"),
           bg = "grey", 
           frame = "none")
dev.off()

# transition for red clonal
png("transition_2.png", 
    width = wid,
    height = ht,  
    units = "in", 
    res = rz)
tip_colors <- c("black", 
                "black", 
                "black", 
                "black", 
                "black", 
                "red",
                "red",
                "red",
                "red",
                "red",
                "black", 
                "black")
trans_color <- c(rep("grey", 10), 
                 "orange", 
                 rep("grey", 11))
plot(tree, 
     edge.width = edge_width, 
     edge.color =  trans_color,
     use.edge.length = FALSE, 
     label.offset = label_offset, 
     show.tip.label = FALSE)
tiplabels(tip = tip_index[tip_colors == "red"], 
          col = "red", offset = 0.15, 
          pch = 19, 
          cex = sz)
nodelabels(node = node_index, pch = 19, cex = sz,
           col = c(rep("black", 5), 
                   "red", "red",
                   "black", "black",
                   "red", "red"),
           bg = "grey", 
           frame = "none")
dev.off()

# Fisher's exact
dat <- matrix(c(1, 0, 0, 21), nrow = 2, ncol = 2)
pval2 <- fisher.test(dat)
p.adjust(c(pval2$p.value, pval2$p.value), method = "bonf")
# 0.09

# transition for nonclonal blue triangles
png("transition_3.png", 
    width = wid,
    height = ht,  
    units = "in", 
    res = rz)
tip_colors2 <- c("black", 
                 "black", 
                 "blue", 
                 "black", 
                 "blue", 
                 "black",
                 "blue",
                 "black",
                 "blue",
                 "black",
                 "blue", 
                 "black")
plot(tree, 
     edge.width = edge_width, 
     edge.color = c(rep("grey", 4), 
                    "orange", 
                    rep("grey", 3), 
                    "orange", 
                    rep("grey", 4), 
                    "orange", 
                    rep("grey", 3), 
                    "orange", 
                    "grey", 
                    "grey", 
                    "orange", "grey"),
     use.edge.length = FALSE, 
     label.offset = label_offset, 
     show.tip.label = FALSE)
tiplabels(tip = tip_index[tip_colors2 == "blue"], 
          col = "blue", 
          pch = 17, offset = 0.15, 
          cex = sz)
nodelabels(node = node_index, pch = 19, cex = sz,
           col = "black",
           bg = "grey", 
           frame = "none")
dev.off()

# transition for nonclonal red circles
png("transition_4.png", 
    width = wid,
    height = ht,  
    units = "in", 
    res = rz)
tip_colors2 <- c("black", 
                 "black", 
                 "red", 
                 "black", 
                 "red", 
                 "black",
                 "red",
                 "black",
                 "red",
                 "black",
                 "red", 
                 "black")
plot(tree, 
     edge.width = edge_width, 
     edge.color = c(rep("grey", 4), 
                    "orange", 
                    rep("grey", 3), 
                    "orange", 
                    rep("grey", 4), 
                    "orange", 
                    rep("grey", 3), 
                    "orange", 
                    "grey", 
                    "grey", 
                    "orange", "grey"),
     use.edge.length = FALSE, 
     label.offset = label_offset, 
     show.tip.label = FALSE)
tiplabels(tip = tip_index, 
          col = tip_colors2, 
          pch = 19, offset = 0.15, 
          cex = sz)
nodelabels(node = node_index, pch = 19, cex = sz,
           col = "black",
           bg = "grey", 
           frame = "none")
dev.off()

# Fisher's exact
dat <- matrix(c(5, 0, 0, 17), nrow = 2, ncol = 2)
pval3 <- fisher.test(dat)
p.adjust(c(pval3$p.value, pval3$p.value), method = "bonf")
# 0.00008

cont_pheno <- rnorm(Ntip(tree))
names(cont_pheno) <- tree$tip.label
new_tree <- tree
new_tree$edge.length <- rep(mean(tree$edge.length), Nedge(new_tree))


png("continuous_tree.png", 
    width = wid,
    height = ht,  
    units = "in", 
    res = rz)
phytools::contMap(new_tree, x = cont_pheno, legend = FALSE, lwd = 10, offset = 100)
dev.off()


# random transitions

png("transition_random1.png", 
    width = wid,
    height = ht,  
    units = "in", 
    res = rz)
set.seed(1)
edge_col <- rep("grey", Nedge(tree))
edge_col[sample(1:Nedge(tree), 5) ] <- "orange"
plot(tree, 
     edge.width = edge_width, 
     edge.color = edge_col,
     use.edge.length = FALSE, 
     label.offset = label_offset, 
     show.tip.label = FALSE)
dev.off()
png("transition_random2.png", 
    width = wid,
    height = ht,  
    units = "in", 
    res = rz)
set.seed(2)
edge_col <- rep("grey", Nedge(tree))
edge_col[sample(1:Nedge(tree), 5) ] <- "orange"
plot(tree, 
     edge.width = edge_width, 
     edge.color = edge_col,
     use.edge.length = FALSE, 
     label.offset = label_offset, 
     show.tip.label = FALSE)
dev.off()
png("transition_random3.png", 
    width = wid,
    height = ht,  
    units = "in", 
    res = rz)
set.seed(3)
edge_col <- rep("grey", Nedge(tree))
edge_col[sample(1:Nedge(tree), 5) ] <- "orange"
plot(tree, 
     edge.width = edge_width, 
     edge.color = edge_col,
     use.edge.length = FALSE, 
     label.offset = label_offset, 
     show.tip.label = FALSE)
dev.off()

# Made up continuous ancestral reconstruction to better line up with non-clonal triangle transition tree
# transition for nonclonal red circles
png("continuous_AR1.png", 
    width = wid,
    height = ht,  
    units = "in", 
    res = rz)
tip_colors <- c("green4", #1
                 "green3", #2
                 "red", #3
                 "forestgreen", #4 
                 "green", #5
                 "seagreen", #6
                 "gold", #7
                 "darkgreen", #8
                 "orange", #9
                 "darkcyan", #10
                 "red", #11
                 "lightseagreen") #12
node_colors <- c("olivedrab", #13 
                 "greenyellow", #14
                 "gold", #15
                 "limegreen", #16
                 "green3", #17
                 "darkgreen", #18
                 "chartreuse4", #19
                 "green2", #20
                 "olivedrab", #21
                 "forestgreen", #22
                 "olivedrab") #23

plot(tree, 
     edge.width = edge_width, 
     edge.color = c(rep("grey", 4), 
                    "orange", 
                    rep("grey", 3), 
                    "orange", 
                    rep("grey", 4), 
                    "orange", 
                    rep("grey", 3), 
                    "orange", 
                    "grey", 
                    "grey", 
                    "orange", "grey"),
     use.edge.length = FALSE, 
     label.offset = label_offset, 
     show.tip.label = FALSE)
tiplabels(tip = tip_index, 
          col = tip_colors, 
          pch = 19, offset = 0.15, 
          cex = sz)
nodelabels(node = node_index, pch = 19, cex = sz,
           col = node_colors,
           bg = "grey", 
           frame = "none")
dev.off()



 
png("continuous_AR2.png", 
    width = wid,
    height = ht,  
    units = "in", 
    res = rz)

tip_colors <- c("green4", #1
                "green3", #2
                "red", #3
                "forestgreen", #4 
                "green", #5
                "seagreen", #6
                "gold", #7
                "darkgreen", #8
                "orange", #9
                "darkcyan", #10
                "red", #11
                "lightseagreen") #12
node_colors <- c("olivedrab", #13 
                 "greenyellow", #14
                 "gold", #15
                 "limegreen", #16
                 "green3", #17
                 "darkgreen", #18
                 "chartreuse4", #19
                 "green2", #20
                 "olivedrab", #21
                 "forestgreen", #22
                 "olivedrab") #23
edge_colors <- c("green4", #1
                 "greenyellow", #2
                 "gold", #3
                 "green3", #4 
                 "red", #5
                 "limegreen", #6
                 "green2", #7
                 "forestgreen", #8
                 "green", #9
                 "green3", #10
                 "darkgreen", #11
                 "seagreen", #12
                 "chartreuse4", #13
                 "gold", #14
                 "forestgreen", #15
                 "darkgreen", #16
                 "olivedrab", #17
                 "orange", #18
                 "darkcyan", #19
                 "olivedrab", #20
                 "red", #21
                 "lightseagreen") # 22

plot(tree, 
     edge.width = edge_width, 
     edge.color = edge_colors,
     use.edge.length = FALSE, 
     label.offset = label_offset, 
     show.tip.label = FALSE)
tiplabels(tip = tip_index, 
          col = tip_colors, 
          pch = 19, offset = 0.15, 
          cex = sz)
nodelabels(node = node_index, pch = 19, 
           cex = sz,
           col = node_colors,
           bg = "grey", 
           frame = "none")
dev.off()


# color and bigger edges involved in genotype transition
geno_trans_edge_index <- c(5,  9, 14, 18, 21)
geno_no_trans_edge_index <- c(1,  2,  3,  4,  6,  7,  8, 10, 11, 12, 13, 15, 16, 17, 19, 20, 22)


nodes_in_trans <- c(21, 23, 19, 20, 15) - 12
nodes_not_in_trans <- c(1:11)[!c(1:11) %in% nodes_in_trans]

tips_in_trans <- c(11, 9, 7, 5, 3)
tips_not_in_trans <- c(1:12)[!c(1:12) %in% tips_in_trans]


geno_trans_edges_wider <- geno_no_trans_edges_wider <- rep(edge_width, Nedge(tree))
geno_trans_edges_wider[geno_no_trans_edge_index] <- 0.25 * edge_width
geno_no_trans_edges_wider[geno_trans_edge_index] <- 0.25 * edge_width

trans_nodes_bigger <- rep(sz, Nnode(tree))
trans_nodes_bigger[nodes_not_in_trans] <- 0.25 * sz

trans_tips_bigger <- non_trans_tips_bigger <- rep(sz, Ntip(tree))
trans_tips_bigger[tips_not_in_trans] <- 0.5 * sz
non_trans_tips_bigger[tips_in_trans] <- 0.5 * sz


trans_tip_colors <- non_trans_tip_colors <- tip_colors
trans_node_colors <- non_trans_node_colors <- node_colors
trans_edge_colors <- non_trans_edge_colors <- edge_colors

trans_tip_colors[tips_not_in_trans] <- "white"
trans_node_colors[nodes_not_in_trans] <- "white"
trans_edge_colors[geno_no_trans_edge_index] <- "white"

non_trans_tip_colors[tips_in_trans] <- "white"
# non_trans_node_colors[nodes_not_in_trans] <- "white"
non_trans_edge_colors[geno_trans_edge_index] <- "white"


png("continuous_AR3.png", 
    width = wid,
    height = ht,  
    units = "in", 
    res = rz)



plot(tree, 
     edge.width = geno_trans_edges_wider, 
     edge.color = trans_edge_colors,
     use.edge.length = FALSE, 
     label.offset = label_offset, 
     show.tip.label = FALSE)
tiplabels(tip = tip_index, 
          col = trans_tip_colors, 
          pch = 19, 
          offset = 0.15, 
          cex = trans_tips_bigger)
nodelabels(node = node_index, pch = 19, 
           cex = trans_nodes_bigger,
           col = trans_node_colors,
           bg = "grey", 
           frame = "none")
dev.off()

# color and bigger edges NOT involved in genotype transition

png("continuous_AR4.png", 
    width = wid,
    height = ht,  
    units = "in", 
    res = rz)
plot(tree, 
     edge.width = geno_no_trans_edges_wider, 
     edge.color = non_trans_edge_colors,
     use.edge.length = FALSE, 
     label.offset = label_offset, 
     show.tip.label = FALSE)
tiplabels(tip = tip_index, 
          col = non_trans_tip_colors, 
          pch = 19, 
          offset = 0.15, 
          cex = non_trans_tips_bigger)
nodelabels(node = node_index, pch = 19, 
           cex = sz,
           col = node_colors,
           bg = "grey", 
           frame = "none")
dev.off()


# highlight transition edges for nonclonal blue triangles
tip_colors2 <- c("black", 
                 "black", 
                 "blue", 
                 "black", 
                 "blue", 
                 "black",
                 "blue",
                 "black",
                 "blue",
                 "black",
                 "blue", 
                 "black")

trans_tip_colors <- non_trans_tip_colors <- tip_colors2
trans_node_colors <- non_trans_node_colors <- rep("black", Nnode(tree))
trans_edge_colors <- non_trans_edge_colors <-  c(rep("grey", 4), 
                                                 "orange", 
                                                 rep("grey", 3), 
                                                 "orange", 
                                                 rep("grey", 4), 
                                                 "orange", 
                                                 rep("grey", 3), 
                                                 "orange", 
                                                 "grey", 
                                                 "grey", 
                                                 "orange", "grey")

trans_tip_colors[tips_not_in_trans] <- "white"
trans_node_colors[nodes_not_in_trans] <- "white"
trans_edge_colors[geno_no_trans_edge_index] <- "white"

non_trans_tip_colors[tips_in_trans] <- "white"
# non_trans_node_colors[nodes_not_in_trans] <- "white"
non_trans_edge_colors[geno_trans_edge_index] <- "white"

png("continuous_AR5.png", 
    width = wid,
    height = ht,  
    units = "in", 
    res = rz)

plot(tree, 
     edge.width = edge_width, 
     edge.color = trans_edge_colors,
     use.edge.length = FALSE, 
     label.offset = label_offset, 
     show.tip.label = FALSE)
tiplabels(tip = 1:Ntip(tree), 
          col = trans_tip_colors, 
          pch = 17, offset = 0.15, 
          cex = sz)
nodelabels(node = node_index, pch = 19, cex = sz,
           col = trans_node_colors,
           bg = "grey", 
           frame = "none")
dev.off()


png("continuous_AR6.png", 
    width = wid,
    height = ht,  
    units = "in", 
    res = rz)

plot(tree, 
     edge.width = edge_width, 
     edge.color = non_trans_edge_colors,
     use.edge.length = FALSE, 
     label.offset = label_offset, 
     show.tip.label = FALSE)
nodelabels(node = node_index, 
           pch = 19, 
           cex = sz,
           col = non_trans_node_colors,
           bg = "grey", 
           frame = "none")
dev.off()

