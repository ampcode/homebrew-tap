class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1773305352-gda2ad7"
  license :cannot_represent

  livecheck do
    url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1773305352-gda2ad7/amp-darwin-arm64"
      sha256 "d93d7e97e99f3c4e47ccf6f1a866c5fbf71e724254cb71099cc74b416cb3bb66"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1773305352-gda2ad7/amp-darwin-x64"
      sha256 "7ca20983e47a73ff0cde364fd7a5cd47706e37110d96e1f3c3ab1d218b286c4e"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1773305352-gda2ad7/amp-linux-arm64"
      sha256 "ed73d92a56c1f0813e5e7feea778337c6b96f5908967a59d83986105579980c9"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1773305352-gda2ad7/amp-linux-x64"
      sha256 "d6d61fc285c4c96712dfd4fd39fae2e86da2bb23cbfb64629415cb01a9ec1e81"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
