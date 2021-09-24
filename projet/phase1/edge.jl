import Base.show

""" Abstract type from which other edge types will be derived.
"""
abstract type AbstractEdge{T} end

"""Type to representant the Edges of a graph

Exemple:

 #Old  edge1 = Edge("TO-MTL",(1,2), 100 )
 edge1= Edge((1,2), 100 ) 

 TODO I will try to break the edge to edgeNode1 , edgeNode2 later to make the reading them faster

"""
mutable struct Edge{T} <: AbstractEdge{T}
#   edge::Tuple{T, T} # is a tuple (1,2)  shows the edge  or Tuple{T, T}  or Tuple{Int64, Int64}
  node1::Node{T} # start node
  node2::Node{T} # Finish node
  weight::Float64
end

# on présume que tous les noeuds dérivant d'AbstractEdge
# posséderont des champs `edge` et `weight`.

# it is assumed that all Edges derived from AbstractEdge
# will have `edge` and `weight` fields.
"""
EN: Return the name of the edge
"""
name(edge::AbstractEdge) = edge.name

"""Renvoie le nom du noeud.
EN: Return the edge of the Edge
"""
edge(edge::AbstractEdge) = edge.edge

"""Renvoie les données contenues dans le noeud.
EN: Returns the weight contained in the edge """
weight(edge::AbstractEdge) = edge.weight

"""Affiche un noeud.
EN: present the edge 
"""
function show(edge::Abstractedge)
  println("Name ",edge(name) ,", Edge ", edge(edge), ", weight: ", weight(edge))
end
