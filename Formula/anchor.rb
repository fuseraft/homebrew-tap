class Anchor < Formula
  desc "A small coding agent for the terminal"
  homepage "https://fuseraft.ai/anchor/"
  version "0.9.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/fuseraft/anchor/releases/download/v0.9.0/anchor-0.9.0-osx-arm64.tar.gz"
      sha256 "b8aad363f8c7bcc4a57958323bcc0e94fc39f731ec7ea72e0b69460ebe45745c"
    end
    on_intel do
      url "https://github.com/fuseraft/anchor/releases/download/v0.9.0/anchor-0.9.0-osx-x64.tar.gz"
      sha256 "8836a4c9fbaba25fa003a570649505d28d76cbad4f15ed34ec0cf56b030927ff"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/fuseraft/anchor/releases/download/v0.9.0/anchor-0.9.0-linux-arm64.tar.gz"
      sha256 "b71c0bb83b209e349e82c8aa5d45ffabdd61d11b37b45e1b129325910b1aadb8"
    end
    on_intel do
      url "https://github.com/fuseraft/anchor/releases/download/v0.9.0/anchor-0.9.0-linux-x64.tar.gz"
      sha256 "0d1a383ea612884903322fb35b7105dd87cfe8986d78613b0ab2128bf6dec6a7"
    end
  end

  def install
    bin.install "anchor"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/anchor --version")
  end
end
