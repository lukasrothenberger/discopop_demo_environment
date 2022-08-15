FROM jupyter/base-notebook

USER root
WORKDIR "/home/jovyan"
RUN apt-get update
RUN apt-get install -y git cmake gcc libclang-11-dev clang-11 llvm-11 clang-tools-11
RUN ln -s /usr/bin/clang-11 /usr/bin/clang || true
RUN ln -s /usr/bin/clang++-11 /usr/bin/clang++ || true
RUN ln -s /usr/bin/llvm-link-11 /usr/bin/llvm-link || true
RUN ln -s /usr/bin/opt-11 /usr/bin/opt || true
RUN git clone https://github.com/lukasrothenberger/discopop_test_environment.git
RUN git clone https://github.com/discopop-project/discopop.git
RUN git clone https://github.com/lukasrothenberger/DP_Maker.git
WORKDIR "/home/jovyan/discopop"
RUN gcc --version
RUN git fetch && git branch && git checkout cfee94e8f287a4d8567a318f422e34d7e34b07d7
RUN mkdir build
WORKDIR "/home/jovyan/discopop/build"
RUN ls
RUN cmake ..
RUN make -j12
WORKDIR "/home/jovyan/discopop/build/rtlib"
RUN ls
WORKDIR "/home/jovyan/discopop/build/rtlib/omp-pragma-extraction"
RUN ls
WORKDIR "/home/jovyan/discopop/build/rtlib/simple-alias-detection"
RUN ls

WORKDIR "/home/jovyan/discopop_test_environment"
RUN chmod -R a+rwx *
RUN pwd
RUN ls
