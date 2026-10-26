class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1793025586-g9211b5"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1793025586-g9211b5/amp-darwin-arm64"
      sha256 "f886a226090d78f155f0e13dbc2f1dd8bc8a276e8427ca603099cc9313ca072d"
    else
      url "https://static.ampcode.com/cli/0.0.1793025586-g9211b5/amp-darwin-x64"
      sha256 "32ac3d5230b47d82d8f14593d2a5031f763073c3393a2f8000dcc98d7007becf"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1793025586-g9211b5/amp-linux-arm64"
      sha256 "1b4ff207e13097c1eb7b8e860314e94bd5e5eabf6d3e2b5df655250e58698112"
    else
      url "https://static.ampcode.com/cli/0.0.1793025586-g9211b5/amp-linux-x64"
      sha256 "6a9103648012b5aba929f73ffc891bbc88bb10a00f57fd3cfe925dfff728aae4"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
