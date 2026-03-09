class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1773030805-g3a9cb3"
  license :cannot_represent

  livecheck do
    url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1773030805-g3a9cb3/amp-darwin-arm64"
      sha256 "9cd0284ff181a31b1cc742edab9e1b5da39a265bbd127ab5fa0d3af6070afe42"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1773030805-g3a9cb3/amp-darwin-x64"
      sha256 "3f5e5c8dc9ad7ce0e95b96eac8a6e848421cab0b66c1ad5dd0cca2dd1dcab630"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1773030805-g3a9cb3/amp-linux-arm64"
      sha256 "cc5f64bac9409584a481ea4d243a6d1976fc88de79782cad6bf39354b246c9d0"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1773030805-g3a9cb3/amp-linux-x64"
      sha256 "2ae0191b3664804fba876486ff5519b06ab38975b5163798fb9f227963e0e2fe"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
