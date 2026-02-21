class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1771660958-g9d88e0"
  license :cannot_represent

  livecheck do
    url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1771660958-g9d88e0/amp-darwin-arm64"
      sha256 "a5ef0ff7ce4e2a789b02f398429439b6a45cfbe860b3e5200f2e4d991fd9accb"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1771660958-g9d88e0/amp-darwin-x64"
      sha256 "2dbec18cfb7b89cf13c0033cd015bd946f894758adbfed4311fa34a2ece63abe"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1771660958-g9d88e0/amp-linux-arm64"
      sha256 "41ce427562cec5666716ec2083efa87735d564c6bf087a8a7406fa33ac92360d"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1771660958-g9d88e0/amp-linux-x64"
      sha256 "755bea0da4f6f8a222b1ad12e4cedce133a283630d7761fb7442ec96589bfb38"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
