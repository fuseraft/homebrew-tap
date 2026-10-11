class Anchor < Formula
  desc "A small coding agent for the terminal"
  homepage "https://fuseraft.ai/anchor/"
  version "0.8.4"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/fuseraft/anchor/releases/download/v0.8.4/anchor-0.8.4-osx-arm64.tar.gz"
      sha256 "b3b4b5112c93c4108aab4b9e022897e25dfa46439260fb9012bd09fd73aabb73"
    end
    on_intel do
      url "https://github.com/fuseraft/anchor/releases/download/v0.8.4/anchor-0.8.4-osx-x64.tar.gz"
      sha256 "542eba6971cc613a9e6371577f76a7b9d0362480ac484d143b952dd7c6c2635c"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/fuseraft/anchor/releases/download/v0.8.4/anchor-0.8.4-linux-arm64.tar.gz"
      sha256 "e4171eae0ec6f7c836b17a8e5b0cc5dda316074f2f961697cf2c80c4b29ec008"
    end
    on_intel do
      url "https://github.com/fuseraft/anchor/releases/download/v0.8.4/anchor-0.8.4-linux-x64.tar.gz"
      sha256 "b36950eb3dfe0ece0ad9e9768b5b22019635f408ecf96909d2e383b7dd2cf31c"
    end
  end

  def install
    bin.install "anchor"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/anchor --version")
  end
end
