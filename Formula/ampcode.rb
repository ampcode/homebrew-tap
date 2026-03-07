class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1772893556-g73f1a6"
  license :cannot_represent

  livecheck do
    url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1772893556-g73f1a6/amp-darwin-arm64"
      sha256 "a6f66699da15cb493ef58d059de2817337c05dc339adc8db6179600b7c8dc0c3"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1772893556-g73f1a6/amp-darwin-x64"
      sha256 "a87074294496e7a748f71301a983366f68ce5ef4f52ab5ea7e158683235c9a09"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1772893556-g73f1a6/amp-linux-arm64"
      sha256 "1730e66e9c45b47ed8b56ed603b79f31cba856183d611418871aea7ce990368c"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1772893556-g73f1a6/amp-linux-x64"
      sha256 "d500226f945b53cee2b702626008144b1382f93981f4d545c58d4949fc511ea9"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
