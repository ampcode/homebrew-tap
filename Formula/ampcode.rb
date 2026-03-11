class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1773216414-gfe345d"
  license :cannot_represent

  livecheck do
    url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1773216414-gfe345d/amp-darwin-arm64"
      sha256 "83270fb1f8bcafaea2b026b57cb5d1331d4fa27c5cd5f957d46c50378cba3509"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1773216414-gfe345d/amp-darwin-x64"
      sha256 "f7e2a3fa012c1f1aa59d89a5b0658999e5c81ac264e990ac2e6475e1afe46408"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1773216414-gfe345d/amp-linux-arm64"
      sha256 "6e1d0cd70acbcd40be972cc8eaedabc8244b16c2f3c5b505821d41d672bb8710"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1773216414-gfe345d/amp-linux-x64"
      sha256 "681d80394835f017a898b731d32789b3fdeae8ff281974f488d2132f92941fbc"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
