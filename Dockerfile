FROM jupyter/scipy-notebook:latest

# Install required python libraries
COPY requirements.txt /tmp/
RUN pip install --requirement /tmp/requirements.txt && \
    fix-permissions $CONDA_DIR && \
    fix-permissions /home/$NB_USER

COPY --chown=1000:100 notebook/* /home/$NB_USER/work/