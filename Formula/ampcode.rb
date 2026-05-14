class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1778758068-gaf118a"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1778758068-gaf118a/amp-darwin-arm64"
      sha256 "0fd382a89ef6e48f9c8e8a8355045fbcb217d90175609484a0775623eb5ca453"
    else
      url "https://static.ampcode.com/cli/0.0.1778758068-gaf118a/amp-darwin-x64"
      sha256 "8475cd1bca867d084c7ef468dab710b7f4aef9741bcd884c80a7e2b665b0f341"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1778758068-gaf118a/amp-linux-arm64"
      sha256 "741e87017d7c46d56ade4b3db97c37838d5bca041886ae5f20d04cf1e1ef8e61"
    else
      url "https://static.ampcode.com/cli/0.0.1778758068-gaf118a/amp-linux-x64"
      sha256 "dd4dc59bba22b1178dd299be6dceb6d22f3558cc26798f0c242e9d0cd5d84845"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
