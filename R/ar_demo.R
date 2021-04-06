library(ape)
set.seed(1)
tree <- rcoal(10)
label_offset <- 10
edge_width <- 20
edge_index <- 1:Nedge(tree)
tip_index <- 1:Ntip(tree)
node_index <- (Nnode(tree) + 2):(Nnode(tree) + Ntip(tree))
# All grey tree
png("1_just_tree.png", 
    width = 20,
    height = 9,  
    units = "in", 
    res = 250)
plot(tree, 
     edge.width = edge_width, 
     edge.color = "gray",
     use.edge.length = FALSE, 
     show.tip.label = FALSE)
nodelabels(node = node_index, pch = 19, cex = 6,
           col = "grey",
           bg = "grey", 
           frame = "none")
dev.off()

# tree with tip labels
png("2_tips_labeled.png", 
    width = 20,
    height = 9,  
    units = "in", 
    res = 250)
tip_colors <- c("red", "black", "black", "black", "red", 
                "black", "red", "black", "black", "black")
plot(tree, 
     edge.width = edge_width, 
     edge.color = "gray",
     use.edge.length = FALSE, 
     label.offset = label_offset, 
     show.tip.label = FALSE)
tiplabels(tip = tip_index, 
          col = tip_colors, 
          pch = 19, cex = 6)
nodelabels(node = node_index, pch = 19, cex = 6,
           col = "grey",
           bg = "grey", 
           frame = "none")
dev.off()


# First AR 
png("3_first_edges.png", 
    width = 20,
    height = 9,  
    units = "in", 
    res = 250)
edge_colors <- c("grey", #1 
                 "grey", #2 
                 "grey", #3 
                 "grey", #4 
                 "grey", #5 
                 "grey", #6 
                 "grey", #7 
                 "grey", #8 
                 "grey", #9 
                 "grey", #10 
                 "grey", #11
                 "grey", #12
                 "grey", #13
                 "grey", #14 
                 "black", #15
                 "black", #16
                 "black", #17
                 "grey") #18
node_colors <- c("grey", # 11
                 "grey", # 12
                 "grey", # 13
                 "grey", # 14
                 "grey", # 15
                 "grey", # 16
                 "grey", # 17
                 "black", # 18
                 "grey") # 19

plot(tree, 
     edge.width = edge_width, 
     edge.color = edge_colors,
     use.edge.length = FALSE, 
     show.tip.label = FALSE)
tiplabels(tip = tip_index,
          cex = 6, 
          col = tip_colors, 
          pch = 19)
nodelabels(node = node_index, pch = 19, cex = 6,
           col = node_colors, 
           bg = "grey", 
           frame = "none")
dev.off()


png("4_tree.png", 
    width = 20,
    height = 9,  
    units = "in", 
    res = 250)
edge_colors <- c("grey", #1 
                 "grey", #2 
                 "grey", #3 
                 "grey", #4 
                 "grey", #5 
                 "black", #6 
                 "black", #7 
                 "black", #8 
                 "grey", #9 
                 "grey", #10 
                 "grey", #11
                 "grey", #12
                 "grey", #13
                 "grey", #14 
                 "black", #15
                 "black", #16
                 "black", #17
                 "grey") #18
node_colors <- c("grey", # 11
                 "grey", # 12
                 "grey", # 13
                 "grey", # 14
                 "grey", # 15
                 "grey", # 16
                 "grey", # 17
                 "black", # 18
                 "black") # 19

plot(tree, 
     edge.width = edge_width, 
     edge.color = edge_colors,
     use.edge.length = FALSE, 
     show.tip.label = FALSE)
tiplabels(tip = tip_index,
          cex = 6, 
          col = tip_colors, 
          pch = 19)
nodelabels(node = node_index, pch = 19, cex = 6,
           col = node_colors, 
           bg = "grey", 
           frame = "none")
dev.off()


png("5_tree.png", 
    width = 20,
    height = 9,  
    units = "in", 
    res = 250)
edge_colors <- c("grey", #1 
                 "grey", #2 
                 "grey", #3 
                 "grey", #4 
                 "grey", #5 
                 "black", #6 
                 "black", #7 
                 "black", #8 
                 "red", #9 
                 "black", #10 
                 "red", #11
                 "grey", #12
                 "grey", #13
                 "grey", #14 
                 "black", #15
                 "black", #16
                 "black", #17
                 "grey") #18
node_colors <- c("grey", # 11
                 "grey", # 12
                 "grey", # 13
                 "grey", # 14
                 "grey", # 15
                 "grey", # 16
                 "red", # 17
                 "black", # 18
                 "black") # 19

plot(tree, 
     edge.width = edge_width, 
     edge.color = edge_colors,
     use.edge.length = FALSE, 
     show.tip.label = FALSE)
tiplabels(tip = tip_index,
          cex = 6, 
          col = tip_colors, 
          pch = 19)
nodelabels(node = node_index, pch = 19, cex = 6,
           col = node_colors, 
           bg = "grey", 
           frame = "none")
dev.off()


png("6_tree.png", 
    width = 20,
    height = 9,  
    units = "in", 
    res = 250)
edge_colors <- c("grey", #1 
                 "grey", #2 
                 "grey", #3 
                 "grey", #4 
                 "black", #5 
                 "black", #6 
                 "black", #7 
                 "black", #8 
                 "red", #9 
                 "black", #10 
                 "red", #11
                 "grey", #12
                 "black", #13
                 "red", #14 
                 "black", #15
                 "black", #16
                 "black", #17
                 "grey") #18
node_colors <- c("grey", # 11
                 "grey", # 12
                 "grey", # 13
                 "black", # 14
                 "grey", # 15
                 "black", # 16
                 "red", # 17
                 "black", # 18
                 "black") # 19

plot(tree, 
     edge.width = edge_width, 
     edge.color = edge_colors,
     use.edge.length = FALSE, 
     show.tip.label = FALSE)
tiplabels(tip = tip_index,
          cex = 6, 
          col = tip_colors, 
          pch = 19)
nodelabels(node = node_index, pch = 19, cex = 6,
           col = node_colors, 
           bg = "grey", 
           frame = "none")
dev.off()


png("7_tree.png", 
    width = 20,
    height = 9,  
    units = "in", 
    res = 250)
edge_colors <- c("grey", #1 
                 "grey", #2 
                 "black", #3 
                 "red", #4 
                 "black", #5 
                 "black", #6 
                 "black", #7 
                 "black", #8 
                 "red", #9 
                 "black", #10 
                 "red", #11
                 "grey", #12
                 "black", #13
                 "red", #14 
                 "black", #15
                 "black", #16
                 "black", #17
                 "grey") #18
node_colors <- c("grey", # 11
                 "grey", # 12
                 "grey", # 13
                 "black", # 14
                 "black", # 15
                 "black", # 16
                 "red", # 17
                 "black", # 18
                 "black") # 19

plot(tree, 
     edge.width = edge_width, 
     edge.color = edge_colors,
     use.edge.length = FALSE, 
     show.tip.label = FALSE)
tiplabels(tip = tip_index,
          cex = 6, 
          col = tip_colors, 
          pch = 19)
nodelabels(node = node_index, pch = 19, cex = 6,
           col = node_colors, 
           bg = "grey", 
           frame = "none")
dev.off()


png("8_tree.png", 
    width = 20,
    height = 9,  
    units = "in", 
    res = 250)
edge_colors <- c("black", #1 
                 "black", #2 
                 "black", #3 
                 "red", #4 
                 "black", #5 
                 "black", #6 
                 "black", #7 
                 "black", #8 
                 "red", #9 
                 "black", #10 
                 "red", #11
                 "black", #12
                 "black", #13
                 "red", #14 
                 "black", #15
                 "black", #16
                 "black", #17
                 "grey") #18
node_colors <- c("grey", # 11
                 "black", # 12
                 "black", # 13
                 "black", # 14
                 "black", # 15
                 "black", # 16
                 "red", # 17
                 "black", # 18
                 "black") # 19

plot(tree, 
     edge.width = edge_width, 
     edge.color = edge_colors,
     use.edge.length = FALSE, 
     show.tip.label = FALSE)
tiplabels(tip = tip_index,
          cex = 6, 
          col = tip_colors, 
          pch = 19)
nodelabels(node = node_index, pch = 19, cex = 6,
           col = node_colors, 
           bg = "grey", 
           frame = "none")
dev.off()


png("9_tree.png", 
    width = 20,
    height = 9,  
    units = "in", 
    res = 250)
edge_colors <- c("black", #1 
                 "black", #2 
                 "black", #3 
                 "red", #4 
                 "black", #5 
                 "black", #6 
                 "black", #7 
                 "black", #8 
                 "red", #9 
                 "black", #10 
                 "red", #11
                 "black", #12
                 "black", #13
                 "red", #14 
                 "black", #15
                 "black", #16
                 "black", #17
                 "black") #18
node_colors <- c("black", # 11
                 "black", # 12
                 "black", # 13
                 "black", # 14
                 "black", # 15
                 "black", # 16
                 "red", # 17
                 "black", # 18
                 "black") # 19

plot(tree, 
     edge.width = edge_width, 
     edge.color = edge_colors,
     use.edge.length = FALSE, 
     show.tip.label = FALSE)
tiplabels(tip = tip_index,
          cex = 6, 
          col = tip_colors, 
          pch = 19)
nodelabels(node = node_index, pch = 19, cex = 6,
           col = node_colors, 
           bg = "grey", 
           frame = "none")
dev.off()



