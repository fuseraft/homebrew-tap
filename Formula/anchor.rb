class Anchor < Formula
  desc "A small coding agent for the terminal"
  homepage "https://fuseraft.ai/anchor/"
  version "0.8.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/fuseraft/anchor/releases/download/v0.8.1/anchor-0.8.1-osx-arm64.tar.gz"
      sha256 "3fa6005ef7247020b96a8821a59f45f4c180d04f2116396f0a21ac02ce59f9d2"
    end
    on_intel do
      url "https://github.com/fuseraft/anchor/releases/download/v0.8.1/anchor-0.8.1-osx-x64.tar.gz"
      sha256 "03bb5833f24e480f5dee050f83f8a9e744f3f9131add19b9e3f572cde71a2258"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/fuseraft/anchor/releases/download/v0.8.1/anchor-0.8.1-linux-arm64.tar.gz"
      sha256 "8cf304313c19ff70d2ee1bec5a5ac77e9175989a1d26de6e40fdaa49c9232764"
    end
    on_intel do
      url "https://github.com/fuseraft/anchor/releases/download/v0.8.1/anchor-0.8.1-linux-x64.tar.gz"
      sha256 "7e9bcccbe34f7a1cbf4e73fefcfbb6732d2c031e24533a3c0a2044ce753ce2cb"
    end
  end

  def install
    bin.install "anchor"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/anchor --version")
  end
end
