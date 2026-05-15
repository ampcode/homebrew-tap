class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1778874856-gbacc03"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1778874856-gbacc03/amp-darwin-arm64"
      sha256 "28b5ae5948a0b20c46d770ad974beb446f636713b537b29d92ee4374e74d69cf"
    else
      url "https://static.ampcode.com/cli/0.0.1778874856-gbacc03/amp-darwin-x64"
      sha256 "0e80af420137f6177d60e9c570a421806dbb087f8aed459581164de670ea615a"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1778874856-gbacc03/amp-linux-arm64"
      sha256 "91f9b7c04c9576f3228b37d3ee513eaa68e85b64505be739d459be64232d752c"
    else
      url "https://static.ampcode.com/cli/0.0.1778874856-gbacc03/amp-linux-x64"
      sha256 "36c48d59e980634a4b19f03055deb5fc0c001cd9c6fd73d6576bb80938678e59"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
