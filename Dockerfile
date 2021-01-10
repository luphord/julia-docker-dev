FROM julia:1.5

RUN julia -e 'using Pkg; Pkg.REPLMode.pkgstr("add IJulia     ;precompile");using IJulia'
RUN julia -e 'using Pkg; Pkg.REPLMode.pkgstr("add Conda     ;precompile");using Conda'
RUN julia -e 'using Conda; Conda.add("jupyterlab")'

EXPOSE 8889

CMD ["/root/.julia/conda/3/bin/jupyter", "lab", "--allow-root", "--ip=0.0.0.0", "--port=8889"]