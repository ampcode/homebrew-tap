class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1784593083-g0c0855"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1784593083-g0c0855/amp-darwin-arm64"
      sha256 "94786968f0ee340a5c5b65143231ebee26b8544231c91cc4b125bf45c03026cc"
    else
      url "https://static.ampcode.com/cli/0.0.1784593083-g0c0855/amp-darwin-x64"
      sha256 "92e8e4c17f40172cde1382148d838a4e1b834c75080443f0fa62ecf42948ce3c"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1784593083-g0c0855/amp-linux-arm64"
      sha256 "72691bd8fa24651ad49df8e2df33b736216b9f115827b860199ce943ffde53f5"
    else
      url "https://static.ampcode.com/cli/0.0.1784593083-g0c0855/amp-linux-x64"
      sha256 "09496ca6fe4b9a8e9d5223a59bfe3d513d0b1664881770c62f51ff1b9c3cb791"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
