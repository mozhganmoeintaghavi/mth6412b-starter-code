### A Pluto.jl notebook ###
# v0.16.1

using Markdown
using InteractiveUtils

# ╔═╡ bc370dd0-1be8-11ec-07f6-e7ed296b0324
md"# Assignment 1

## Class??
## Prof. Orban
Group:
* Mozhgan 
* Farhad Rahbarnia 

This document holds the summary of the steps and outputs of Phase 1 of the class project.



[Code to Github: https://github.com/farhadrclass/mth6412b-starter-code]( https://github.com/farhadrclass/mth6412b-starter-code )


"

# ╔═╡ 4dc27f4d-7c9c-4d93-b3c3-eb7cd5d73413
md"
# Summary of What we did?

1. Retrieve the code for phase 1 from the course website. You will find there a
Node for the nodes of a graph and Graph for the graph itself. We also provide
also a set of functions that read the files in TSPLib format. We limit ourselves here to
symmetric problems whose weights are given in EXPLICIT format.

2. Propose an Edge type to represent the edges of a graph.

3. Extend the Graph type so that a graph contains its edges. We limit ourselves here to non oriented graphs. The user must be able to add one edge at a time to a graph.

4. Extend the show method of a Graph object so that the edges of the graph are also displayed.
 
5. Extend the read_edges() function of read_stsp.jl to read the weights of the edges (they are currently ignored). 

6. Provide a main program that reads a symmetric TSP instance whose weights are given in EXPLICIT format and builds a corresponding Graph object.

7. Your code should be available on your fork of the startup repository on Github in a
branch named phase1 . Indicate its address in your report. In addition, your report should
demonstrate the use of your main program and its results.




"

# ╔═╡ f05adbc6-d170-49ad-a079-5748d314db4c
md"

# edge.jl

Here is the code snip which we included here :

```julia


import Base.show
include(\"node.jl\")
abstract type AbstractEdge{T} end
edgeStart(edge::AbstractEdge) = edge.node1

edgeEnd(edge::AbstractEdge) = edge.node2

weight(edge::AbstractEdge) = edge.weight


```


"

# ╔═╡ dc6afbc2-3a75-4adb-85a3-9520c9ae4bfa
# Questions 

# ╔═╡ aeeed655-c80c-486a-9dba-862cfbd41cd3


# ╔═╡ Cell order:
# ╠═bc370dd0-1be8-11ec-07f6-e7ed296b0324
# ╠═4dc27f4d-7c9c-4d93-b3c3-eb7cd5d73413
# ╠═f05adbc6-d170-49ad-a079-5748d314db4c
# ╠═dc6afbc2-3a75-4adb-85a3-9520c9ae4bfa
# ╠═aeeed655-c80c-486a-9dba-862cfbd41cd3
