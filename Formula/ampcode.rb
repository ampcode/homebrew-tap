class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1772366498-gc5d869"
  license :cannot_represent

  livecheck do
    url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1772366498-gc5d869/amp-darwin-arm64"
      sha256 "783d44698f34a05c882c194e1093fc5fa5f173a5ded979c0aa1aa40f62bfbc92"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1772366498-gc5d869/amp-darwin-x64"
      sha256 "8a04c097da567156c94764f7fe5a2e97a998a82547e26eb080eab24ed66bb8b9"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1772366498-gc5d869/amp-linux-arm64"
      sha256 "31ade08d6521a3b015251cb7f733065ee686c8355716dd7938bd61d619f189b1"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1772366498-gc5d869/amp-linux-x64"
      sha256 "404eaa0c8b54f9338fb2927bf3cc36e534fe9007fefb90418af26e1e9e189d4a"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
