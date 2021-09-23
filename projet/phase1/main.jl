"""
This program reads a symmetric TSP instance whose weights are given in EXPLICIT format and builds a corresponding Graph object.
"""

# Import the other files 
   
# include("node.jl")
# # include("edge.jl")
# include("graph.jl")
include("read_stsp.jl")


# read the graph from the file 


# create a graph using data types



# # Here I am creating a test to make sure our code runs
cd("instances\\stsp\\")# go to the file for data
graph_nodes, graph_edges = read_stsp("bayg29.tsp")
print(size(graph_edges))
print(graph_edges)
print(graph_nodes)


# plot_graph(graph_nodes, graph_edges)
# savefig("bayg29.pdf")
