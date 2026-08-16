class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1786896116-gd65cd9"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1786896116-gd65cd9/amp-darwin-arm64"
      sha256 "7cfd3e1fc3874d2fd998216ee1bdf091cf44249128bbdb4960ea636858f88eaa"
    else
      url "https://static.ampcode.com/cli/0.0.1786896116-gd65cd9/amp-darwin-x64"
      sha256 "03e788cdce98b81e310797f881dfeece689d4de68e81b4d9bae8e2227de96282"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1786896116-gd65cd9/amp-linux-arm64"
      sha256 "098bfcb5eab3437cb977992067628fddf5a4c933e0b5785fdca4cf38a90c9ee3"
    else
      url "https://static.ampcode.com/cli/0.0.1786896116-gd65cd9/amp-linux-x64"
      sha256 "3cadce8eabb5d69563bea9a29334800cba8cd12a221c15a6c1787328d4d648bc"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
