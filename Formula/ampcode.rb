class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1776903169-g537470"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1776903169-g537470/amp-darwin-arm64"
      sha256 "b314e42237645632e7b433e832f021a2b1cb49af58e9b5a98c5009654a50e25c"
    else
      url "https://static.ampcode.com/cli/0.0.1776903169-g537470/amp-darwin-x64"
      sha256 "3b9ede5f7cf76dac173d61cdd2ec625206ba86300a2eff071c41c4c96b408b82"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1776903169-g537470/amp-linux-arm64"
      sha256 "3c50d46c4ea5e1bcf95b6a69f1d8725203af33afda900efd4015f9f20427c854"
    else
      url "https://static.ampcode.com/cli/0.0.1776903169-g537470/amp-linux-x64"
      sha256 "2f6572cf7930b0da0265927a055dddf3fa3780384a45a2e55a8e16e73f876ef7"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
