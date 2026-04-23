class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1776939576-gc6481a"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1776939576-gc6481a/amp-darwin-arm64"
      sha256 "2f4d79b5b60401e0fc47fd110b6f5939dd2f2893a0ad6f7aaa9aa50c99f8b5e8"
    else
      url "https://static.ampcode.com/cli/0.0.1776939576-gc6481a/amp-darwin-x64"
      sha256 "cc5d97d40ca2dbedd314bdf787bf275ee2b1e89fb488f174ef8a5115b38ce10b"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1776939576-gc6481a/amp-linux-arm64"
      sha256 "d392d8af72c4b666faed100c2872cfcdf095bae5548d77cae4adee1726777512"
    else
      url "https://static.ampcode.com/cli/0.0.1776939576-gc6481a/amp-linux-x64"
      sha256 "1a62c85f73c9c617e3d36df427a2eaf13b23144b35be6c3f0229f2093191d109"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
