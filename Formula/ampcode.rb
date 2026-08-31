class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1788192028-g5fbfc6"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1788192028-g5fbfc6/amp-darwin-arm64"
      sha256 "e89a7d1eddafabb4ca92f7ec0e44098397640ca03e2402f6d57a2ef968dd2430"
    else
      url "https://static.ampcode.com/cli/0.0.1788192028-g5fbfc6/amp-darwin-x64"
      sha256 "203e48e9584e046ba9f6e7f595b5a1d4252a5b094540f5bdabdd2e291f052f30"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1788192028-g5fbfc6/amp-linux-arm64"
      sha256 "edd62a75af59f9ae23abda041fd0e4e8b9b367d7eed3e7d7277035faaff0a77c"
    else
      url "https://static.ampcode.com/cli/0.0.1788192028-g5fbfc6/amp-linux-x64"
      sha256 "e90b114a02586d2c9b11e86c753c5c22331e0372bb42c58c63142aa06c7b5107"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
