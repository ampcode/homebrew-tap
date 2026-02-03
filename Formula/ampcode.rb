class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1770105999-g211bc1"
  license :cannot_represent

  livecheck do
    url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1770105999-g211bc1/amp-darwin-arm64"
      sha256 "fc3d205f321f1030b73c11364c7ca792111d18bb31a9fb2c1e45ad2611d494b2"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1770105999-g211bc1/amp-darwin-x64"
      sha256 "0bb661c39cb0d15a7fcd86ca8f1a57c532e139c339347a60ab8b23d1c45f8b3d"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1770105999-g211bc1/amp-linux-arm64"
      sha256 "77ff4be4dd067675bccd0f0bac14a5496050b87c344a9efb48390d7214ef3f4f"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1770105999-g211bc1/amp-linux-x64"
      sha256 "dc1be77e8ea1e7c611b69763542a129d5e971397446ce327c206e74c3345a7f6"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
