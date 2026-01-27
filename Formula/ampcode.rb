class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1769472122-gc136b9"
  license :cannot_represent

  livecheck do
    url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1769472122-gc136b9/amp-darwin-arm64"
      sha256 "607ebb4b80bacee5008862afdc9c457e879cca07b23d7a7c6cc4a47b0e2f38e6"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1769472122-gc136b9/amp-darwin-x64"
      sha256 "8660c23b8c83a7eaaa323aba4eef782bd28e9ab043077105a867c1aeaac61334"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1769472122-gc136b9/amp-linux-arm64"
      sha256 "e2beee18077fa88964517c0986be6e0721ddd7374217b5ae13831a0a764c3521"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1769472122-gc136b9/amp-linux-x64"
      sha256 "c2676f68c037709eb0c92a45d192e03cfc2780636912c2a1a303d9ab13592334"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
