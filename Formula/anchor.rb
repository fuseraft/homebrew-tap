class Anchor < Formula
  desc "A small coding agent for the terminal"
  homepage "https://fuseraft.ai/anchor/"
  version "0.7.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/fuseraft/anchor/releases/download/v0.7.0/anchor-0.7.0-osx-arm64.tar.gz"
      sha256 "e3744e9790c0589fdd2dc9bcada50cb1c3a4bb5645e0fda7031cb713c247737d"
    end
    on_intel do
      url "https://github.com/fuseraft/anchor/releases/download/v0.7.0/anchor-0.7.0-osx-x64.tar.gz"
      sha256 "b19f7dd68c0aef6abc006b636daadfa9945b19a991b763d03fc6d39714704bc6"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/fuseraft/anchor/releases/download/v0.7.0/anchor-0.7.0-linux-arm64.tar.gz"
      sha256 "3f3a3851d1d53120bb67b2682fa34aa3e9911972fc80a8a2ef4189b7acd6e124"
    end
    on_intel do
      url "https://github.com/fuseraft/anchor/releases/download/v0.7.0/anchor-0.7.0-linux-x64.tar.gz"
      sha256 "b68b8c5691031809bec9058031c7eb47054298295b7cd2e9c8bbbd288e7454f0"
    end
  end

  def install
    bin.install "anchor"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/anchor --version")
  end
end
