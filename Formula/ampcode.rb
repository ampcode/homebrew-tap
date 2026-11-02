class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1793592041-g8ba069"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1793592041-g8ba069/amp-darwin-arm64"
      sha256 "8d16859ef6c3c14f085da882f0a2958fc67f5c2e07576ee9b8eb164bb2e84b61"
    else
      url "https://static.ampcode.com/cli/0.0.1793592041-g8ba069/amp-darwin-x64"
      sha256 "ffe33fc6abedbb1155e061cc80dbb944282e37437c848563d7c525039953b2d3"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1793592041-g8ba069/amp-linux-arm64"
      sha256 "7fed2ec0f8d2330d491f80015d1551d2e112c0e1deb33821a72e4cd4ebcbde29"
    else
      url "https://static.ampcode.com/cli/0.0.1793592041-g8ba069/amp-linux-x64"
      sha256 "406c162ee50429da382876c69f5936a8fd574af68a4d9bd97a4886b1c63f7f6d"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
