class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1777588863-g007773"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1777588863-g007773/amp-darwin-arm64"
      sha256 "29ae016c5977c19f3138114016c67d9fc91824c74ab1873e69d60f5a7d8a4a0d"
    else
      url "https://static.ampcode.com/cli/0.0.1777588863-g007773/amp-darwin-x64"
      sha256 "b00083b8ec642efb962e7ae43882f3aa16efabfbd8b05bc295175bb9f8dd3d89"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1777588863-g007773/amp-linux-arm64"
      sha256 "44c9b84f9dd3176b5f5320ed9ac34b11740f5b38a8703c5c60b1f321f20e1757"
    else
      url "https://static.ampcode.com/cli/0.0.1777588863-g007773/amp-linux-x64"
      sha256 "931da688256604b5079d23286314bd44b517f677eb0060829018221ef84d99e2"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
