FROM jupyter/scipy-notebook:latest

# Install required python libraries
COPY requirements.txt /tmp/
RUN pip install --requirement /tmp/requirements.txt && \
    fix-permissions $CONDA_DIR && \
    fix-permissions /home/$NB_USER

# Environment-var expansion in command options is not implemented yet
# Thus following line is not right, need to hard code the user and group name or id
# COPY --chown=$NB_USER:$NB_GID notebook/* /home/$NB_USER/work/
COPY --chown=1000:100 notebook/* /home/$NB_USER/work/