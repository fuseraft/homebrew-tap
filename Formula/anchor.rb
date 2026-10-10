class Anchor < Formula
  desc "A small coding agent for the terminal"
  homepage "https://fuseraft.ai/anchor/"
  version "0.8.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/fuseraft/anchor/releases/download/v0.8.2/anchor-0.8.2-osx-arm64.tar.gz"
      sha256 "2b28ac3974f9c81f1281c27ab931a4b976c76a877f6c85264fa000e7b51fbdae"
    end
    on_intel do
      url "https://github.com/fuseraft/anchor/releases/download/v0.8.2/anchor-0.8.2-osx-x64.tar.gz"
      sha256 "dddcb4804bbfebc14d96d2611281a15cf7912fc64b33bcdd32ccf6a8e0110606"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/fuseraft/anchor/releases/download/v0.8.2/anchor-0.8.2-linux-arm64.tar.gz"
      sha256 "06438a8f7d59d0f325769dbab3e8839edb0bc2c5ea9a0c7f312fb742b0bb43fd"
    end
    on_intel do
      url "https://github.com/fuseraft/anchor/releases/download/v0.8.2/anchor-0.8.2-linux-x64.tar.gz"
      sha256 "ad7e04a2ed6ef5b8f1654be30fc22c3a74185d5a83980c121f2d8a5839dbdc10"
    end
  end

  def install
    bin.install "anchor"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/anchor --version")
  end
end
