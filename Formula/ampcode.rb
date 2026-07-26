class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1785042303-g48bae9"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1785042303-g48bae9/amp-darwin-arm64"
      sha256 "6a2b31098e8382628f5014ab8544d85d409ff45e80267aaff242394b9f259af2"
    else
      url "https://static.ampcode.com/cli/0.0.1785042303-g48bae9/amp-darwin-x64"
      sha256 "5354dc1f3e2d9e5c8772136f0ed92c3076358eb05487994f38fbf2f78ea36a42"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1785042303-g48bae9/amp-linux-arm64"
      sha256 "b40d8f36c700f15b0b6a0b44e3292672a56f060357f5ce8b8a23f91a6ecfddad"
    else
      url "https://static.ampcode.com/cli/0.0.1785042303-g48bae9/amp-linux-x64"
      sha256 "12f03e19cfe1b3d6bae05a9964fa721233072dbf3deda6c63b7fffa113da14c6"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
