class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1772725772-g52e1a8"
  license :cannot_represent

  livecheck do
    url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1772725772-g52e1a8/amp-darwin-arm64"
      sha256 "afcdea735cc6e438792fdf2a0d84b40e9bc6b89b55f7bdda4df72e7433b78e70"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1772725772-g52e1a8/amp-darwin-x64"
      sha256 "16f0470924350375d54b5f3e583a1294af492494df08d32ef6be254d4bed514b"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1772725772-g52e1a8/amp-linux-arm64"
      sha256 "622d4c47ddfef638c6c723a9bea7e65ad5e5f1cf6c19f0978ff9fed1a2679d34"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1772725772-g52e1a8/amp-linux-x64"
      sha256 "cb7d4f2c64ac4501223f1b57162bf180930397c34705b79cfb4545fd7d6c9c64"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
