FROM ghcr.io/neurowaifu/neurowaifu.worker.comfyui:latest

# Install custom nodes
RUN comfy-node-install https://github.com/NeuroWaifu/ComfyUI.Node.MediaSuite
RUN comfy-node-install https://github.com/NeuroWaifu/ComfyUI.Node.SeedVR2
