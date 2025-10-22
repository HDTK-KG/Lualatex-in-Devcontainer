# VS Code Devcontainerの標準的なDebian 12 (Bookworm) イメージをベースにします
FROM mcr.microsoft.com/devcontainers/base:bookworm

# rootユーザーに切り替えてパッケージをインストールします
USER root

# TeX Liveのフルインストールと、日本語フォント(Noto CJK)をインストール
RUN apt-get update && export DEBIAN_FRONTEND=noninteractive && \
    apt-get install -y --no-install-recommends \
    texlive-full \
    fonts-noto-cjk \
    make && \
    # aptキャッシュをクリーンアップしてイメージサイズを削減
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

# (注意) kanji-config-tex-jp は LuaLaTeX では不要です

# ベースイメージのデフォルトである非rootユーザー(vscode)に戻します
USER vscode
