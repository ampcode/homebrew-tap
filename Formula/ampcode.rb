class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1779772576-g751b94"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1779772576-g751b94/amp-darwin-arm64"
      sha256 "2ba89fac4481b7e73d8ab754b5836036bde8a8e1cd349ac4aadee5d430fe337b"
    else
      url "https://static.ampcode.com/cli/0.0.1779772576-g751b94/amp-darwin-x64"
      sha256 "a1a8a94111dea047ab0079b4dd98bf2817e7d8682e11c8dd0d6230e24deb71d0"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1779772576-g751b94/amp-linux-arm64"
      sha256 "330d31a687a61d3aa36a2f9599fef76950face4c6f6086aae048c263a599437d"
    else
      url "https://static.ampcode.com/cli/0.0.1779772576-g751b94/amp-linux-x64"
      sha256 "2e5e1fdf831141783053e70438c5649740abad80ddbdc47d146b0bf958ae4054"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
