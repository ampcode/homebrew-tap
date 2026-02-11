class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1770811810-ga633b0"
  license :cannot_represent

  livecheck do
    url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1770811810-ga633b0/amp-darwin-arm64"
      sha256 "ad8cce5e1acc60e6708dca4c125490e858829a832d6debb85b1cf23df0e97ebe"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1770811810-ga633b0/amp-darwin-x64"
      sha256 "aadfe24f2742ed5841fc8d49492ad13e9109b8a8a675bf721e22705525973bc7"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1770811810-ga633b0/amp-linux-arm64"
      sha256 "bfdefb1c5486fe44fe5357088b90f5284b37d81d4622a715f2872f0ef3dd6f3c"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1770811810-ga633b0/amp-linux-x64"
      sha256 "7a104f46e7c46a537f8218945bd6e4f41d41972641602af90a8df70de9cc5293"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
