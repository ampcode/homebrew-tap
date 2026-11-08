class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1794168041-g5b9330"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1794168041-g5b9330/amp-darwin-arm64"
      sha256 "3200a0626b63d26bdcb47fe29bab8ea55d14a12d60924b010ea60e68c4b49cf0"
    else
      url "https://static.ampcode.com/cli/0.0.1794168041-g5b9330/amp-darwin-x64"
      sha256 "c00c61f857d2f93dd958b7a8c98f6f84514ac5d7fbeff1d5736c1a5b83df72c5"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1794168041-g5b9330/amp-linux-arm64"
      sha256 "921ff3a639eb51c6b4c507121e935024938f601cc1f65c416f1ac700e967f80d"
    else
      url "https://static.ampcode.com/cli/0.0.1794168041-g5b9330/amp-linux-x64"
      sha256 "dbc49536d9d3d14a83d470d811e55a6ef1a8589335fb32fc59658d828a22fdbd"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
