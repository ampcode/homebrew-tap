class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1771848350-g31e659"
  license :cannot_represent

  livecheck do
    url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1771848350-g31e659/amp-darwin-arm64"
      sha256 "2329d9b05c2bdbdcd8e7418ddba1a47ed5487b8d66accc5e0cc66275e4d9aaff"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1771848350-g31e659/amp-darwin-x64"
      sha256 "ea657fb586e869777c67f4c9ba28b26f7371bf2ce8d5c88caa15dff92811737a"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1771848350-g31e659/amp-linux-arm64"
      sha256 "62eb7b8201df97ff4eff844bc431e575eedf454f994f2c591646940ce8b9d45f"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1771848350-g31e659/amp-linux-x64"
      sha256 "1c3fe5ab7b357e6dd9d016c6f01c2dbb78d334015c1926da54ffc438430047e0"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
