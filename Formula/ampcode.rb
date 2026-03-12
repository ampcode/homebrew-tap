class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1773339409-g04db1b"
  license :cannot_represent

  livecheck do
    url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1773339409-g04db1b/amp-darwin-arm64"
      sha256 "36dbc4d9926996a49649d28db714337150606110aead30291daccd84bb56cf87"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1773339409-g04db1b/amp-darwin-x64"
      sha256 "ee41a19a2d213e0a9d9d694fca0aa44afcece5e5adc0afb99ce7bee2c7fc0ec1"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1773339409-g04db1b/amp-linux-arm64"
      sha256 "4c2af06bbecaebb26c50528a3420596ba91bbb22002135cb85b1fae60fc5492c"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1773339409-g04db1b/amp-linux-x64"
      sha256 "7ca745a44f6ffd652c09a82d5d43d0f53a26265bc4dee1dc3cc3fce9384f99fb"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
