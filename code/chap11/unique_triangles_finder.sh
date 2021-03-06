#-----------------------------------------------------
# This is a shell script for building  
#   1. a graph using GraphFrames package.
#   2. find unique Triangles from the built graph
#-----------------------------------------------------
# @author Mahmoud Parsian
#-----------------------------------------------------
export SPARK_HOME="/pyspark_book/spark-2.4.3"
export SPARK_PROG="/pyspark_book/code/code/chap11/unique_triangles_finder.py"
export GRAPH_FRAMES="graphframes:graphframes:0.5.0-spark2.1-s_2.11"
#
export VERTICES_PATH="/pyspark_book/code/chap11/sample_graph_vertices.txt"
export EDGES_PATH="/pyspark_book/code/chap11/sample_graph_edges.txt"
#
# run the PySpark program:
$SPARK_HOME/bin/spark-submit --packages $GRAPH_FRAMES $SPARK_PROG $VERTICES_PATH $EDGES_PATH
