class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1771378455-g3b2d0b"
  license :cannot_represent

  livecheck do
    url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1771378455-g3b2d0b/amp-darwin-arm64"
      sha256 "867453b2897ad66693e2096f34156a2623206d11c83a1c8e0ab39a2f8dcd6f0c"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1771378455-g3b2d0b/amp-darwin-x64"
      sha256 "8988037127b5cd7aa4249692a3899a38aafe7cf1912fd9eb5c78d65a6daa460e"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1771378455-g3b2d0b/amp-linux-arm64"
      sha256 "e75fba3689e0914b0c08d8c47dbb8fae3c263a8ebe92aeb12efbba339776568d"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1771378455-g3b2d0b/amp-linux-x64"
      sha256 "5a93f30a5179c82399eba4d3a609efe52815eb9dc0a41668fae6fcc7a8fc0fbb"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
