FROM apache/superset
# Switching to root to install the required packages
USER root

# install the support for ducdb in superset
RUN pip install duckdb duckdb-engine

USER superset