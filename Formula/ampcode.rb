class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1772712289-g374549"
  license :cannot_represent

  livecheck do
    url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1772712289-g374549/amp-darwin-arm64"
      sha256 "e62ea9c93140b7ea8f6eab63808f32df3761d50032fd81e14de7be7931f2e644"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1772712289-g374549/amp-darwin-x64"
      sha256 "13207a01bdbf056040d61e6545af64904d7738d00002cdf7240f5dd78c3c26b6"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1772712289-g374549/amp-linux-arm64"
      sha256 "8c0e24bde83625e4ad5f120157184ff80fd44dc6c9f38bbfdddad6cd6aeb81f9"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1772712289-g374549/amp-linux-x64"
      sha256 "da30efc409c5a5d6fa7901aeec333faa6439c326c4043ef1b12e64f00da62766"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
