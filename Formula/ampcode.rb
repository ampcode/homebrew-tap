class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1781456693-g308eb0"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1781456693-g308eb0/amp-darwin-arm64"
      sha256 "7cd0f80da2ed32bf5b96ed23b7d1e6c55e29f1414f7857e8838051900138fab3"
    else
      url "https://static.ampcode.com/cli/0.0.1781456693-g308eb0/amp-darwin-x64"
      sha256 "17dfef2d254aec5e5084c9d16825767fa9006ac06fa602e712b88b264cd2a595"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1781456693-g308eb0/amp-linux-arm64"
      sha256 "f23cf7e395b91d62504aad8f97c2095ef3299f10d0bee3cabbbad030a3fd84a1"
    else
      url "https://static.ampcode.com/cli/0.0.1781456693-g308eb0/amp-linux-x64"
      sha256 "3f56ed5af6f686612cc5f470afad11f31b297e74745ee3b1e28126dbc5cba646"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
