class Anchor < Formula
  desc "A small coding agent for the terminal"
  homepage "https://fuseraft.github.io/anchor/"
  version "0.4.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/fuseraft/anchor/releases/download/v0.4.0/anchor-0.4.0-osx-arm64.tar.gz"
      sha256 "d07423da788d5afd596755478c5ef955cf9ffb784b18f158bedae2801947884f"
    end
    on_intel do
      url "https://github.com/fuseraft/anchor/releases/download/v0.4.0/anchor-0.4.0-osx-x64.tar.gz"
      sha256 "c2aba3b0dcf5c069960bef3f3fb3c5f05229ac4856018b2728b607106ee994f0"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/fuseraft/anchor/releases/download/v0.4.0/anchor-0.4.0-linux-arm64.tar.gz"
      sha256 "a854310812da84440a44a361e0af27b0345e53df8986a841fe62aed656cfaf13"
    end
    on_intel do
      url "https://github.com/fuseraft/anchor/releases/download/v0.4.0/anchor-0.4.0-linux-x64.tar.gz"
      sha256 "31a61a1bbc56d2502147a2e4d6e00f989e8beb3aa08a9a18e8a3c9be54bede10"
    end
  end

  def install
    bin.install "anchor"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/anchor --version")
  end
end
