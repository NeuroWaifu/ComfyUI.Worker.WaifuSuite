FROM ghcr.io/neurowaifu/comfyui.worker:latest

WORKDIR /comfyui/custom_nodes

# MediaSuite
RUN git clone https://github.com/NeuroWaifu/ComfyUI.Node.MediaSuite
RUN if [ -f ComfyUI.Node.MediaSuite/requirements.txt ]; then \
        uv pip install -r ComfyUI.Node.MediaSuite/requirements.txt; \
    fi

# SeedVR2
RUN git clone https://github.com/NeuroWaifu/ComfyUI.Node.SeedVR2
RUN if [ -f ComfyUI.Node.SeedVR2/requirements.txt ]; then \
        uv pip install -r ComfyUI.Node.SeedVR2/requirements.txt; \
    fi

# RIFE
RUN git clone https://github.com/NeuroWaifu/ComfyUI.Node.RIFE
RUN if [ -f ComfyUI.Node.RIFE/requirements.txt ]; then \
        uv pip install -r ComfyUI.Node.RIFE/requirements.txt; \
    fi

WORKDIR /