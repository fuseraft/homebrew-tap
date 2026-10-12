class Anchor < Formula
  desc "A small coding agent for the terminal"
  homepage "https://fuseraft.ai/anchor/"
  version "0.8.6"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/fuseraft/anchor/releases/download/v0.8.6/anchor-0.8.6-osx-arm64.tar.gz"
      sha256 "1a57c586cb16e254f0c4ed2c01da80b802210d1d712747d1406511da61c3817c"
    end
    on_intel do
      url "https://github.com/fuseraft/anchor/releases/download/v0.8.6/anchor-0.8.6-osx-x64.tar.gz"
      sha256 "0893655d45e5225ddf5e250b210eddea4a3a20371a4631f2ff426c9b39976f87"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/fuseraft/anchor/releases/download/v0.8.6/anchor-0.8.6-linux-arm64.tar.gz"
      sha256 "8a582c8c9cf77135f2fe5292a1b2577ee9be6945ba1942726d6e893526f54b5d"
    end
    on_intel do
      url "https://github.com/fuseraft/anchor/releases/download/v0.8.6/anchor-0.8.6-linux-x64.tar.gz"
      sha256 "1fbf4817bc5e4fd1e8495814a846fb9cabb9cf24c06882d86d9ca40008305e49"
    end
  end

  def install
    bin.install "anchor"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/anchor --version")
  end
end
