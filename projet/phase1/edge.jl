import Base.show

""" Abstract type from which other edge types will be derived.
"""
abstract type AbstractEdge{T} end

"""Type to representant the Edges of a graph

Exemple:
TODO examl
 

"""
mutable struct Edge{T} <: AbstractEdge{T}
  edge::T # is a tuple (1,2)  shows the edge
  weight::Float64
end

# on présume que tous les noeuds dérivant d'AbstractEdge
# posséderont des champs `edge` et `weight`.

# it is assumed that all Edges derived from AbstractEdge
# will have `edge` and `weight` fields.

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
  println("Edge ", edge(edge), ", weight: ", weight(edge))
end
