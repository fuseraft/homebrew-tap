class Anchor < Formula
  desc "A small coding agent for the terminal"
  homepage "https://fuseraft.github.io/anchor/"
  version "0.3.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/fuseraft/anchor/releases/download/v0.3.1/anchor-0.3.1-osx-arm64.tar.gz"
      sha256 "242e241eddb33c7943727ad3d3431ab056037b0bb0168457028f60447d75dd9a"
    end
    on_intel do
      url "https://github.com/fuseraft/anchor/releases/download/v0.3.1/anchor-0.3.1-osx-x64.tar.gz"
      sha256 "3f8e154dd3bcae818546c9362c151550cc6fd67a9788b5bdc54479a2bbac3446"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/fuseraft/anchor/releases/download/v0.3.1/anchor-0.3.1-linux-arm64.tar.gz"
      sha256 "025ff2577b70707a3bb5ccd7f9499c05467e2587f995a5c9fbdfc6189a1c1460"
    end
    on_intel do
      url "https://github.com/fuseraft/anchor/releases/download/v0.3.1/anchor-0.3.1-linux-x64.tar.gz"
      sha256 "a09b5871ba184c94979c5e82ab4de0bb0684ca298a86539ee1d70acf5f56764c"
    end
  end

  def install
    bin.install "anchor"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/anchor --version")
  end
end
