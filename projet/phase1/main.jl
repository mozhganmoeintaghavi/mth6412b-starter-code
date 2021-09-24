"""
This program reads a symmetric TSP instance whose weights are given in EXPLICIT format and builds a corresponding Graph object.
"""

# Import the other files 
   
include("node.jl")
include("edge.jl")
include("graph.jl")
include("read_stsp.jl")


# read the graph from the file 


# create a graph using data types



# # Here I am creating a test to make sure our code runs
cd("instances\\stsp\\")# go to the file for data
graphName = "gr17"
fileName = string(graphName,".tsp")
graph_nodes, graph_edges = read_stsp(fileName)
# print(size(graph_edges))
# print(graph_edges[10])
# print(length(graph_edges))
# print(graph_nodes)






# go through the nodes and create the nodes of the graph using the edge lists (name of the node is the edge[1])

# nodes = Dict{Int}{Vector{Node{T}}}()
nodes= {Vector{Node{T}}}[]
for k=1:length(graph_edges)
    if (length(graph_nodes) > 0) # check to see if the name is assigned in the TSP file, if not we do something else 
        nodes_buff = Node(graph_nodes[k][1], graph_nodes[k][2])
    else
        nodes_buff = Node(k, k ) #name is the same as we assign it 
    end
    push!(nodes,nodes_buff)
end

 # edge positions
 # go through the edge list and create the edges of the graph

 edges= {Vector{Edge{K}}}[]

 for k = 1 : length(graph_edges)
    for j in graph_edges[k]
        # Edge(node1, node2, weight)
        edge_buff=Edge(nodes[k][1], nodes[j][1],graph_edges[j][k])
        push!(edges, edge_buff)
        # print(j)
    end
  end

G = Graph(graphName,nodes, edges)
G.show()

# print(nodes)

# now we have everything
# plot_graph(graph_nodes, graph_edges)
# savefig("bayg29.pdf")
