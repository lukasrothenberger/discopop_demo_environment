FROM jupyter/minimal-notebook

USER root
WORKDIR "/home/jovyan"
RUN apt-get update
RUN apt-get install -y git cmake gcc libclang-11-dev clang-11 llvm-11 clang-tools-11 python3 python3-pip
RUN ln -s /usr/bin/clang-11 /usr/bin/clang || true
RUN ln -s /usr/bin/clang++-11 /usr/bin/clang++ || true
RUN ln -s /usr/bin/llvm-link-11 /usr/bin/llvm-link || true
RUN ln -s /usr/bin/opt-11 /usr/bin/opt || true
USER jovyan
ARG CACHEBUST=$(date +%s)
RUN echo "$CACHEBUST"
RUN git clone https://github.com/lukasrothenberger/discopop_demo_environment.git
RUN git clone https://github.com/discopop-project/discopop.git
RUN git clone https://github.com/lukasrothenberger/DP_Maker.git
WORKDIR "/home/jovyan/discopop"
RUN git fetch && git branch && git checkout parallelization_validation
RUN mkdir build
WORKDIR "/home/jovyan/discopop/build"
RUN cmake ..
RUN make -j12
# Install python dependencies
WORKDIR "/home/jovyan/discopop/discopop_explorer"
RUN python -m pip install -r requirements.txt
WORKDIR "/home/jovyan/discopop/discopop_validation"
RUN python -m pip install -r requirements.txt

WORKDIR "/home/jovyan/discopop_demo_environment"
RUN chmod -R a+rwx *
