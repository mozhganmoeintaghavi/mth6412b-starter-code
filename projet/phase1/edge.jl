import Base.show
include("node.jl")

""" Abstract type from which other edge types will be derived.
"""
abstract type AbstractEdge{K} end

"""Type to representant the Edges of a graph

Exemple:

    #Old  edge1 = Edge("TO-MTL",(1,2), 100 )
    #edge1= Edge((1,2), 100 ) 
    edge1= Edge(node1, node2, 50.1)

 TODO I will try to break the edge to edgeNode1 , edgeNode2 later to make the reading them faster

"""
mutable struct Edge{K} <: AbstractEdge{K}
  node1::Node{K} # start node
  node2::Node{K} # Finish node
  weight::Float64
end



edgeStart(edge::AbstractEdge) = data(edge.node1)

edgeEnd(edge::AbstractEdge) = data(edge.node2)

"""Renvoie les données contenues dans le noeud.
EN: Returns the weight contained in the edge """
weight(edge::AbstractEdge) = edge.weight

"""Affiche un noeud.
EN: present the edge 
"""
# Fix this later
function show(edge::AbstractEdge)
  println("Starting Point ",edgeStart(edge) ,", EndNode ", edgeEnd(edge), ", weight: ", weight(edge))
end
