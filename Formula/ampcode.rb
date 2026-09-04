class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1788534175-gbe7c83"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1788534175-gbe7c83/amp-darwin-arm64"
      sha256 "a6aae6e6b44cd6beec92e1b9c2338cb5f4c097437c31cb07d97fb34efb5eac1f"
    else
      url "https://static.ampcode.com/cli/0.0.1788534175-gbe7c83/amp-darwin-x64"
      sha256 "8bf32f56d3b7e32dbea680e987c169a5293a6f39ab85e7730c8062558e6f926e"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1788534175-gbe7c83/amp-linux-arm64"
      sha256 "beceb33c41b5918915f8a78081219aefb2a249fdc2fc846001e8b7f050256c2a"
    else
      url "https://static.ampcode.com/cli/0.0.1788534175-gbe7c83/amp-linux-x64"
      sha256 "7ea769355860938d458bb6a3a06d8c79e523be0eca24beead77085c861db4be3"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
