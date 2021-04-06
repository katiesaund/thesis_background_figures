library(ape)
set.seed(1)
tree <- rcoal(6)
label_offset <- 10
edge_width <- 10
edge_index <- 1:Nedge(tree)
tip_index <- 1:Ntip(tree)
node_index <- (Nnode(tree) + 2):(Nnode(tree) + Ntip(tree))
wid <- 7
ht <- 4.5
sz <- 2
rz <- 200
# All grey tree
png("A_just_tree.png", 
    width = wid,
    height = ht,  
    units = "in", 
    res = rz)
plot(tree, 
     edge.width = edge_width, 
     edge.color = "gray",
     use.edge.length = FALSE, 
     show.tip.label = FALSE)
dev.off()


# tree with tip labels
png("B_tips.png", 
    width = wid,
    height = ht,  
    units = "in", 
    res = rz)
tip_colors <- rep("red", Ntip(tree))
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
dev.off()


png("C_nodes.png", 
    width = wid,
    height = ht,   
    units = "in", 
    res = rz)
tip_colors <- rep("grey", Ntip(tree))
plot(tree, 
     edge.width = edge_width, 
     edge.color = "gray",
     use.edge.length = FALSE, 
     label.offset = label_offset, 
     show.tip.label = FALSE)
tiplabels(tip = tip_index, 
          col = tip_colors, 
          pch = 19, cex = sz)
nodelabels(node = node_index, pch = 19, cex = sz,
           col = "red",
           bg = "grey", 
           frame = "none")
dev.off()


png("D_edges.png", 
    width = wid,
    height = ht,   
    units = "in", 
    res = rz)
tip_colors <- rep("grey", Ntip(tree))
plot(tree, 
     edge.width = edge_width, 
     edge.color = "red",
     use.edge.length = FALSE, 
     label.offset = label_offset, 
     show.tip.label = FALSE)
tiplabels(tip = tip_index, 
          col = tip_colors, 
          pch = 19, cex = sz)
nodelabels(node = node_index, pch = 19, cex = sz,
           col = "grey",
           bg = "grey", 
           frame = "none")
dev.off()


png("E_parent_and_child.png", 
    width = wid,
    height = ht,  
    units = "in", 
    res = rz)
tip_colors <- rep("grey", Ntip(tree))
plot(tree, 
     edge.width = edge_width, 
     edge.color = "grey",
     use.edge.length = FALSE, 
     label.offset = label_offset, 
     show.tip.label = FALSE)
tiplabels(tip = tip_index, 
          col = tip_colors, 
          pch = 19, cex = sz)
nodelabels(node = node_index, pch = 19, cex = sz,
           col = c("grey", "red", "blue", "grey", "grey"),
           bg = "grey", 
           frame = "none")
dev.off()