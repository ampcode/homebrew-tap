class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1774137801-g524ead"
  license :cannot_represent

  livecheck do
    url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1774137801-g524ead/amp-darwin-arm64"
      sha256 "0a56408c04f25944c31f12b100e5b87158ce89d53d25abe3ab8617d2880133bb"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1774137801-g524ead/amp-darwin-x64"
      sha256 "19beef050ce09101edfae2664e909276033c6a7159d36a86e30cfa2657db9c38"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1774137801-g524ead/amp-linux-arm64"
      sha256 "d218843f1a799344c431cee7fc9fa7f32e45f8b2905f216f2ea97d63c309f4ca"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1774137801-g524ead/amp-linux-x64"
      sha256 "a2d15bf30eb0dcc08f6e8bded8f6ea1c825ec41ebd3fbfd299e504d68e5be5e6"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
