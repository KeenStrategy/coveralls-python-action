FROM thekevjames/coveralls:3.3.1

COPY src/ /src/
RUN python3 -m pip install Cython

RUN python3 -m pip install "coverage[toml]"

ENTRYPOINT ["/src/entrypoint.py"]
