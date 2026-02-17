class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1771338334-g6b2a4c"
  license :cannot_represent

  livecheck do
    url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1771338334-g6b2a4c/amp-darwin-arm64"
      sha256 "beb826f35d3e8dd1fa6391ffda474f927c76c9ebb8ce3f57eaaec5614cfce16c"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1771338334-g6b2a4c/amp-darwin-x64"
      sha256 "0f92f4205650c78da50751a6c14c9588434b17609a60946e93a089c2b246ec0f"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1771338334-g6b2a4c/amp-linux-arm64"
      sha256 "38ec2b75299eac5bc6a2f2bb9b2070557acba992dbda20a6158347c084e7bf13"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1771338334-g6b2a4c/amp-linux-x64"
      sha256 "d705b416d323b5eff9040db4ec04a6a299870fb0d9a4d477ffa22a241ddfb8ca"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
