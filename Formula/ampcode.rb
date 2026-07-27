class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1785129233-ga1c2a7"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1785129233-ga1c2a7/amp-darwin-arm64"
      sha256 "ea0f31d6dda0ec7c9db327555d23d3367300fe4f631fb3d9c1df85ccb761ca3c"
    else
      url "https://static.ampcode.com/cli/0.0.1785129233-ga1c2a7/amp-darwin-x64"
      sha256 "29226e85781f61432e832e57dadf9c1b24e246188c3be55ee2457e88385e6894"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1785129233-ga1c2a7/amp-linux-arm64"
      sha256 "a97a8a24012f53692b2fab2c599ab776902ef0e3af2b0b6a8fd95b76dc75a4c5"
    else
      url "https://static.ampcode.com/cli/0.0.1785129233-ga1c2a7/amp-linux-x64"
      sha256 "bfcae0b1493065fb62a097ccce257194d0bb2756c77f6f2a74abacc4b656aca2"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
