class Anchor < Formula
  desc "A small coding agent for the terminal"
  homepage "https://fuseraft.ai/anchor/"
  version "0.8.5"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/fuseraft/anchor/releases/download/v0.8.5/anchor-0.8.5-osx-arm64.tar.gz"
      sha256 "69e53997f76e77124220de12e3c01211413de3fe5221bd4fcb9b694ca17394e0"
    end
    on_intel do
      url "https://github.com/fuseraft/anchor/releases/download/v0.8.5/anchor-0.8.5-osx-x64.tar.gz"
      sha256 "5a2cdd2373aeaf0e7b2611ca3b6d596b8f155fe7f3165b90588f29f5ee14d84e"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/fuseraft/anchor/releases/download/v0.8.5/anchor-0.8.5-linux-arm64.tar.gz"
      sha256 "9a2b0b280056b0d6b2c19a50d6d151954140cb333c886eb334a2cce9202484d2"
    end
    on_intel do
      url "https://github.com/fuseraft/anchor/releases/download/v0.8.5/anchor-0.8.5-linux-x64.tar.gz"
      sha256 "00c4e231fa08625beca0f9ca7ecab33a9ba0b5ba78c1e6175430c2bb0c2c3bc1"
    end
  end

  def install
    bin.install "anchor"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/anchor --version")
  end
end
