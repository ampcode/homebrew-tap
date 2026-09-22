class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1790082161-g365795"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1790082161-g365795/amp-darwin-arm64"
      sha256 "dc3c57d950e6feb78fb3747ca4a8535f6b8d006da5fb3ca2edb5c9ea0ef9e4bb"
    else
      url "https://static.ampcode.com/cli/0.0.1790082161-g365795/amp-darwin-x64"
      sha256 "4c3e0413bbae7d37247f0ebb437e89261f9f44a3c31e4def6fcff403b207ecf3"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1790082161-g365795/amp-linux-arm64"
      sha256 "acab5a4d3e02b861cf1fcf38eb83b6c793c8784f80d7cb995de0dca3e5296931"
    else
      url "https://static.ampcode.com/cli/0.0.1790082161-g365795/amp-linux-x64"
      sha256 "5ca60d18c9e17f6838d2ffce017504854f0afa18a9a68a8cf0c212d8baded7d3"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
