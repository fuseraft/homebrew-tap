class Anchor < Formula
  desc "A small coding agent for the terminal"
  homepage "https://fuseraft.ai/anchor/"
  version "0.10.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/fuseraft/anchor/releases/download/v0.10.1/anchor-0.10.1-osx-arm64.tar.gz"
      sha256 "6ddf4b88164fff611b869ea06291a1d4a68dc9aa9ff3117141de5020588783d2"
    end
    on_intel do
      url "https://github.com/fuseraft/anchor/releases/download/v0.10.1/anchor-0.10.1-osx-x64.tar.gz"
      sha256 "ef91c1413dfef5a29d971d4ae55a2905a1bf747ff9c6f40e504ad95bceb8beff"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/fuseraft/anchor/releases/download/v0.10.1/anchor-0.10.1-linux-arm64.tar.gz"
      sha256 "c6a75125f38afde0c8bfbd8421bd3ff193905c878bdc476480cbf27e5ac182a4"
    end
    on_intel do
      url "https://github.com/fuseraft/anchor/releases/download/v0.10.1/anchor-0.10.1-linux-x64.tar.gz"
      sha256 "087f9dde3b28e6608af66825fcbd62bcbea443d3bd8509dc00626b60849fec97"
    end
  end

  def install
    bin.install "anchor"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/anchor --version")
  end
end
