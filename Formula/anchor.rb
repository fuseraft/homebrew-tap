class Anchor < Formula
  desc "A small coding agent for the terminal"
  homepage "https://fuseraft.ai/anchor/"
  version "0.8.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/fuseraft/anchor/releases/download/v0.8.3/anchor-0.8.3-osx-arm64.tar.gz"
      sha256 "a8e902ef18dc6e711096d00fc603499661b222c51ace836209bed14347201147"
    end
    on_intel do
      url "https://github.com/fuseraft/anchor/releases/download/v0.8.3/anchor-0.8.3-osx-x64.tar.gz"
      sha256 "33479819d3b2d682416ae38be2f6216911704c2590deb81e293aab05a0de10d8"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/fuseraft/anchor/releases/download/v0.8.3/anchor-0.8.3-linux-arm64.tar.gz"
      sha256 "edaed789e7583a0e8ff54caf236c9dade9e4ac80f80578fb8eda7ddcb54b7a15"
    end
    on_intel do
      url "https://github.com/fuseraft/anchor/releases/download/v0.8.3/anchor-0.8.3-linux-x64.tar.gz"
      sha256 "8928b4a1078a4c85c925f94dd83a0a726098b9ff11c4bba07fc66f1698deb11d"
    end
  end

  def install
    bin.install "anchor"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/anchor --version")
  end
end
