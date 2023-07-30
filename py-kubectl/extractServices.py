import subprocess

subprocess.run(["""  k get pods -n detection -o=jsonpath='{range .items[?(@.spec.nodeSelector.node\.kubernetes\.io/instance-type=="Standard_D32s_v3")]}{.spec.nodeSelector.node\.kubernetes\.io/instance-type}   {.metadata.name}{"\n"}{end}' """], capture_output=True)



