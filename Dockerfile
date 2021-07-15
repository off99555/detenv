# Determined Image
FROM determinedai/environments:py-3.7-pytorch-1.9-lightning-1.3-tf-2.4-cpu-0.16.1
# FROM determinedai/environments:cuda-11.2-pytorch-1.7-lightning-1.2-tf-2.5-gpu-0.16.1

# Custom Configuration
# RUN apt-get update && \
#    DEBIAN_FRONTEND="noninteractive" apt-get -y install tzdata && \
#    apt-get install -y unzip python-opencv graphviz
# COPY environment.yml /tmp/environment.yml
# COPY pip_requirements.txt /tmp/pip_requirements.txt
# RUN conda env update --name base --file /tmp/environment.yml
# RUN conda clean --all --force-pkgs-dirs --yes
COPY startup-hook.sh /tmp/startup-hook.sh
RUN eval "$(conda shell.bash hook)" && \
   conda activate base && \
   cd /tmp/ && \
   sh startup-hook.sh
   # pip install --requirement /tmp/pip_requirements.txt