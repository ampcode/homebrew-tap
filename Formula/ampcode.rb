class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1771099295-g012b61"
  license :cannot_represent

  livecheck do
    url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1771099295-g012b61/amp-darwin-arm64"
      sha256 "6f52605ef89b7f404d48e5089d70713c14669eb05565028c58e08cee1a36a00d"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1771099295-g012b61/amp-darwin-x64"
      sha256 "ee1f59596cf02d12f9bfe27f04ed980ab6fbbe6555a5501073b8d4caaee156c1"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1771099295-g012b61/amp-linux-arm64"
      sha256 "74bb97a0a0943d307bdec73f86121bcbbf0a026cb9441ef8ee81126e8e19f796"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1771099295-g012b61/amp-linux-x64"
      sha256 "a46b251d80f0c38474e289102d60723814bfdd0bca4443968df756baf59a86b0"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
