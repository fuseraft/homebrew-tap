class Anchor < Formula
  desc "A small coding agent for the terminal"
  homepage "https://fuseraft.github.io/anchor/"
  version "0.4.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/fuseraft/anchor/releases/download/v0.4.0/anchor-0.4.0-osx-arm64.tar.gz"
      sha256 "fe8f1fd71978fafe3c42581e1dadda9094c15b32b7672d29af858eb00be8eaf9"
    end
    on_intel do
      url "https://github.com/fuseraft/anchor/releases/download/v0.4.0/anchor-0.4.0-osx-x64.tar.gz"
      sha256 "0379ebb543c5e27f9b0f472efc2dbebbd6f120d5a1017be984fa6022a045eea2"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/fuseraft/anchor/releases/download/v0.4.0/anchor-0.4.0-linux-arm64.tar.gz"
      sha256 "ffc35e3265f994703168261982b63bf328f286b0c73cd73ddfe982ef3b8cd133"
    end
    on_intel do
      url "https://github.com/fuseraft/anchor/releases/download/v0.4.0/anchor-0.4.0-linux-x64.tar.gz"
      sha256 "3e8f1387b74595ac3d78daf0fb1d664d832125877f293ba8c120c18f66a81b79"
    end
  end

  def install
    bin.install "anchor"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/anchor --version")
  end
end
