class Anchor < Formula
  desc "A small coding agent for the terminal"
  homepage "https://fuseraft.ai/anchor/"
  version "0.6.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/fuseraft/anchor/releases/download/v0.6.0/anchor-0.6.0-osx-arm64.tar.gz"
      sha256 "215c75c75ddc3fdb27ec9069f9a006d22f918793d6aabea7370313c4b273b5b0"
    end
    on_intel do
      url "https://github.com/fuseraft/anchor/releases/download/v0.6.0/anchor-0.6.0-osx-x64.tar.gz"
      sha256 "cb8a41d54475521752a0b88d893e3b1a99b4ed06156a978074cc790b99fdba90"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/fuseraft/anchor/releases/download/v0.6.0/anchor-0.6.0-linux-arm64.tar.gz"
      sha256 "2b726522bb624b8b0bf5cc68fe571641f4397c0513331ed5da44120bc8e316f9"
    end
    on_intel do
      url "https://github.com/fuseraft/anchor/releases/download/v0.6.0/anchor-0.6.0-linux-x64.tar.gz"
      sha256 "013e3dccb438f79f537312431258e90e03c70fafb02e01f8b51aa2c608621af5"
    end
  end

  def install
    bin.install "anchor"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/anchor --version")
  end
end
