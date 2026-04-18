class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1776499823-g737fc9"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1776499823-g737fc9/amp-darwin-arm64"
      sha256 "22c0d46727843b0387a8664f0000be59af8b6b727a756945b8ad67b62f66541c"
    else
      url "https://static.ampcode.com/cli/0.0.1776499823-g737fc9/amp-darwin-x64"
      sha256 "384f1ae643eebce2bc0b4c59fdd715dd3c1294c4aa84c43f0f3020442485a78d"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1776499823-g737fc9/amp-linux-arm64"
      sha256 "37ad6046cbf4fa33ea9a9381fb770dc7fca0b65bc2a429d3dafcabf1802546b2"
    else
      url "https://static.ampcode.com/cli/0.0.1776499823-g737fc9/amp-linux-x64"
      sha256 "2a8a2837922918a7f25e0ac7bbe9353c3b2746c1b96714c800f0ac276faa10fc"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
