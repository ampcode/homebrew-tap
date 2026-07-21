class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1784651282-gd826ef"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1784651282-gd826ef/amp-darwin-arm64"
      sha256 "db7cd5759666ebf8078b6cd275f6028858b8bed9bcd208fd0f74e0aa6ac3c313"
    else
      url "https://static.ampcode.com/cli/0.0.1784651282-gd826ef/amp-darwin-x64"
      sha256 "d8f0eb799ebac5d09f53cb6bccaf517e2583644d2302af2cf5415613efecfdfb"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1784651282-gd826ef/amp-linux-arm64"
      sha256 "f02f55ceb093c20f59f42f7fa4148ad8deb69ba77b13b9a60a2fda8603a010db"
    else
      url "https://static.ampcode.com/cli/0.0.1784651282-gd826ef/amp-linux-x64"
      sha256 "e0344ad96947511582e1da9dea0d807a85bccb17fe8795f8a3872d02a92ab329"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
