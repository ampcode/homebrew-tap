class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1772075355-g93d28e"
  license :cannot_represent

  livecheck do
    url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1772075355-g93d28e/amp-darwin-arm64"
      sha256 "b024ed5ed19467976a461ef4c9203d455c53a5cf4d209f2a58393752ccd659e5"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1772075355-g93d28e/amp-darwin-x64"
      sha256 "50048f748f15884858557747781e7ae8a068fe79e5de95558ac7249a8046cb3e"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1772075355-g93d28e/amp-linux-arm64"
      sha256 "c1446584f297e12a984ed8fca8837f6b1c61ef1de05fd952de7093cc4ebb9346"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1772075355-g93d28e/amp-linux-x64"
      sha256 "ed8d9d8684f65cd1274e605ad9a03ed17d8099461f63bd4b232331e2c988d5e1"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
