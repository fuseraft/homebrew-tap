class Anchor < Formula
  desc "A small coding agent for the terminal"
  homepage "https://fuseraft.ai/anchor/"
  version "0.8.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/fuseraft/anchor/releases/download/v0.8.0/anchor-0.8.0-osx-arm64.tar.gz"
      sha256 "46dfb9dba922387f28cfa0581cf255e7026b987fab70dce5273d992cb75e3df7"
    end
    on_intel do
      url "https://github.com/fuseraft/anchor/releases/download/v0.8.0/anchor-0.8.0-osx-x64.tar.gz"
      sha256 "a9b7ad31e4bd5c215d5a7ab407f25400b9f2ba9c117ee704c861ff70465d8847"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/fuseraft/anchor/releases/download/v0.8.0/anchor-0.8.0-linux-arm64.tar.gz"
      sha256 "19a1666f8f0223a771e6ec221a50eaef33441148b8b038746410b91a5b259c33"
    end
    on_intel do
      url "https://github.com/fuseraft/anchor/releases/download/v0.8.0/anchor-0.8.0-linux-x64.tar.gz"
      sha256 "43c931e3367870357b0e9f87edbad556c203e440b215b3a5fccfea414069e805"
    end
  end

  def install
    bin.install "anchor"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/anchor --version")
  end
end
