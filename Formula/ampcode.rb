class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1778889686-ga2e684"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1778889686-ga2e684/amp-darwin-arm64"
      sha256 "9248ab3e512cca6eef65ac24879b3c8f1d89d0e4c9f35e791f75fb4d6e32496a"
    else
      url "https://static.ampcode.com/cli/0.0.1778889686-ga2e684/amp-darwin-x64"
      sha256 "43dcd13dac8c64751de6b188e9a26aa05065e8b4aece1c48ceefbbc246c8a9a0"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1778889686-ga2e684/amp-linux-arm64"
      sha256 "92f304bc4463ebefca62691eccce1875a85af253477e52c4910a606538cb6d63"
    else
      url "https://static.ampcode.com/cli/0.0.1778889686-ga2e684/amp-linux-x64"
      sha256 "6c7b090cc0feab4c510fbf74dcb3199f657190fa261bf90362372f5b36049deb"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
