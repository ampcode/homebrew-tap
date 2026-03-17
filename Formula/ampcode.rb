class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1773764390-g90afc3"
  license :cannot_represent

  livecheck do
    url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1773764390-g90afc3/amp-darwin-arm64"
      sha256 "8a750ba34ed2a1275bce454954e78c0bc12c7eaa3ce408e44c90deed25ba4a6a"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1773764390-g90afc3/amp-darwin-x64"
      sha256 "103ac49ac5b9d14a4ed10ba9767534046a289f8f8ceb9248d3baa2602937bd36"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1773764390-g90afc3/amp-linux-arm64"
      sha256 "41578d03ee4f622109f013d12fcb4b5094561513033778359b698dae6a971586"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1773764390-g90afc3/amp-linux-x64"
      sha256 "fa1bd019e5a2c1dd9ecd91d2af155bb9c321a0ebb72f7a47d8c1e002d41d56fa"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
