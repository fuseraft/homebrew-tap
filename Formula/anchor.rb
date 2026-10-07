class Anchor < Formula
  desc "A small coding agent for the terminal"
  homepage "https://fuseraft.ai/anchor/"
  version "0.5.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/fuseraft/anchor/releases/download/v0.5.0/anchor-0.5.0-osx-arm64.tar.gz"
      sha256 "e9c6c651056365622a1150bf468c45d81543620eab801c624dbb385ff2bd2a11"
    end
    on_intel do
      url "https://github.com/fuseraft/anchor/releases/download/v0.5.0/anchor-0.5.0-osx-x64.tar.gz"
      sha256 "e80a46d2083a69f0b69b4833afaac8c6965890049474528aa179ea9d57c003c4"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/fuseraft/anchor/releases/download/v0.5.0/anchor-0.5.0-linux-arm64.tar.gz"
      sha256 "479ff2346f623bcdcf306207a7e15ca5378f9d73534836080ab03d70573c9d1f"
    end
    on_intel do
      url "https://github.com/fuseraft/anchor/releases/download/v0.5.0/anchor-0.5.0-linux-x64.tar.gz"
      sha256 "e732b0e662b7107f6e4a73fe805e0560a5683dc1d9f53303f992c1b495356549"
    end
  end

  def install
    bin.install "anchor"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/anchor --version")
  end
end
