FROM ghcr.io/data-beam/base-notebook

RUN mamba install --yes 'py-xgboost' && \
    mamba clean --all -f -y && \
    fix-permissions "${CONDA_DIR}" && \
    fix-permissions "/home/${NB_USER}"
