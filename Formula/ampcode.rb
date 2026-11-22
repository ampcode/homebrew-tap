class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1795320040-g5c6c45"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1795320040-g5c6c45/amp-darwin-arm64"
      sha256 "6ec76152524983a314ccaa2659a27b151ddf9ce0662a3e386b2da20ac2c4ba68"
    else
      url "https://static.ampcode.com/cli/0.0.1795320040-g5c6c45/amp-darwin-x64"
      sha256 "4deea15f60568ef17a2f343716c4c44956d8d71a83daa0d01241fea2fb5edce9"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1795320040-g5c6c45/amp-linux-arm64"
      sha256 "c7c28c3d4fb463e00302a3bac92529c67934287b4984321d3296f25f90a766ba"
    else
      url "https://static.ampcode.com/cli/0.0.1795320040-g5c6c45/amp-linux-x64"
      sha256 "50d8f6de8a21f4630655de2ff155ccdb4c4b7d50fc5546e49436133d6217e91e"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
