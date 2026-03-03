class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1772540962-ga08c1b"
  license :cannot_represent

  livecheck do
    url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1772540962-ga08c1b/amp-darwin-arm64"
      sha256 "d09adc35f77afc82205d85345fd8ad7bc46619f739cd8328b1b47bb70abced0c"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1772540962-ga08c1b/amp-darwin-x64"
      sha256 "b4dc69ea5ac395902185278aadceb08bf6e81ae8685cc469ade8d40d4fd853f5"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1772540962-ga08c1b/amp-linux-arm64"
      sha256 "286cf1e36cbf5109b19f0f7831be3954c1467866cc9c186c101420ec647cf2b0"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1772540962-ga08c1b/amp-linux-x64"
      sha256 "3d11473cec0f0202f8ae0312f0a5921d25257eecb02cd43f99ad8fb858ef5716"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
