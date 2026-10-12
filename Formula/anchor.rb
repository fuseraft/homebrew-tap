class Anchor < Formula
  desc "A small coding agent for the terminal"
  homepage "https://fuseraft.ai/anchor/"
  version "0.10.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/fuseraft/anchor/releases/download/v0.10.0/anchor-0.10.0-osx-arm64.tar.gz"
      sha256 "fbd3916edb2bf665e9681d94f00dc5401b7233e0579170090cb9b9b3e21de125"
    end
    on_intel do
      url "https://github.com/fuseraft/anchor/releases/download/v0.10.0/anchor-0.10.0-osx-x64.tar.gz"
      sha256 "204e1417e916120df6d6a160a5955378bcf474cf37a9df461cd9002b934c5445"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/fuseraft/anchor/releases/download/v0.10.0/anchor-0.10.0-linux-arm64.tar.gz"
      sha256 "11232c27962983c12891289f7d0d180ee398c0fc16c9070942c53af614963c3d"
    end
    on_intel do
      url "https://github.com/fuseraft/anchor/releases/download/v0.10.0/anchor-0.10.0-linux-x64.tar.gz"
      sha256 "1ee55749af9efe809b020ac106064514504702deae28bbad975922faa0b93057"
    end
  end

  def install
    bin.install "anchor"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/anchor --version")
  end
end
