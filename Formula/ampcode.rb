class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1771994068-g7d0629"
  license :cannot_represent

  livecheck do
    url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1771994068-g7d0629/amp-darwin-arm64"
      sha256 "fc6f4a1ab31abae120e7b702cd52f1390115a24f0d364542b4f7a1dcb87441f1"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1771994068-g7d0629/amp-darwin-x64"
      sha256 "e744ca3958e7d13cb59930b6fadf4ee211e4d1d03fcd04945cbeefead1dd2cb4"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1771994068-g7d0629/amp-linux-arm64"
      sha256 "788e5b41ebdd8c552339b8c70bb49e890f6f44ebb8be4a162548b5709d958794"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1771994068-g7d0629/amp-linux-x64"
      sha256 "da6268880c57b812af14deb37c88c2093381396032a0493d1985f61a612ecf0e"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
