class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1790812896-g460e6c"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1790812896-g460e6c/amp-darwin-arm64"
      sha256 "25dd55cfae9093f7c67305c4eaf24f5d3d4d8e240268d845934c42b322da0569"
    else
      url "https://static.ampcode.com/cli/0.0.1790812896-g460e6c/amp-darwin-x64"
      sha256 "6616800816cf42e5875a7b973f1db40cd9078862207c50689aa5cdcfa8e32e26"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1790812896-g460e6c/amp-linux-arm64"
      sha256 "fecf5e52e64fc8b534ef7ad39ec00ff8fc8cf890c40a2666c825f21e7e659525"
    else
      url "https://static.ampcode.com/cli/0.0.1790812896-g460e6c/amp-linux-x64"
      sha256 "82c733efc226b3e872aa171fa261b822213b4ea4ee43cc15b7ae5186afcfd7fe"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
