ARG BASE_IMAGE

FROM scratch AS ctx

COPY build_files /build_files
COPY repo_files /repo_files
COPY system_files /system_files
COPY system_modules /system_modules

FROM ${BASE_IMAGE}

ARG IMAGE_NAME="${IMAGE_NAME:-bazzite-mdev}"
ARG IMAGE_VENDOR="${IMAGE_VENDOR:-mdev-linux}"

RUN --mount=type=bind,from=ctx,source=/,target=/ctx \
    --mount=type=cache,dst=/var/cache/libdnf5 \
    --mount=type=tmpfs,dst=/run \
    --mount=type=tmpfs,dst=/tmp \
    --mount=type=tmpfs,dst=/var \
    /ctx/build_files/build.sh

RUN bootc container lint
