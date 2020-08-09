# diagram.py
from diagrams import Cluster, Diagram
from diagrams.aws.security import KMS


with Diagram("KMS", show=False):
          KMS("Key")
