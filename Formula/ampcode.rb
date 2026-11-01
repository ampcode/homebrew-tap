class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1793505644-g31e93e"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1793505644-g31e93e/amp-darwin-arm64"
      sha256 "c371a59e0ff04b4dba02aa238395c90ace1c34d39861c18c8b32b3ec6a56d6b2"
    else
      url "https://static.ampcode.com/cli/0.0.1793505644-g31e93e/amp-darwin-x64"
      sha256 "8c8df071a00a596b47d2c2f27e2a63ca75d76e950782b512b047d25d3e2bf3a4"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1793505644-g31e93e/amp-linux-arm64"
      sha256 "dc734dc710520a32cc1e0c25b3c32f5b26e782df5eeed030681eec0839e7c2ca"
    else
      url "https://static.ampcode.com/cli/0.0.1793505644-g31e93e/amp-linux-x64"
      sha256 "a5aa1bc2b8c6e118d220eb70f0277e5c76afbe57381b9b1a6a8bd98e1c59b516"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
