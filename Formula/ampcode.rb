class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1789761645-g82344a"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1789761645-g82344a/amp-darwin-arm64"
      sha256 "d7be75190508500db4e4b1ea564ad6f11251d49c21e019967559deb78cf6cc2d"
    else
      url "https://static.ampcode.com/cli/0.0.1789761645-g82344a/amp-darwin-x64"
      sha256 "574da835ba4dd7c1fed509ba4dbd6ea370ec5d4695c629933107e75fe7a0cae6"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1789761645-g82344a/amp-linux-arm64"
      sha256 "1ffbb8c50a14ca1db0b94db6ffd199924889675b0beccb47ffe94508a5ec9680"
    else
      url "https://static.ampcode.com/cli/0.0.1789761645-g82344a/amp-linux-x64"
      sha256 "65f98cf9a7609bcd4c0184e3d25da944c49a8492d78da8f2126c1d643f67bd5b"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
