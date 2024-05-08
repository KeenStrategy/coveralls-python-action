FROM thekevjames/coveralls:latest

COPY src/ /src/

RUN git config --system --add safe.directory /github/workspace

ENTRYPOINT ["/src/entrypoint.py"]
