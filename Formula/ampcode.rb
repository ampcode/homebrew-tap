class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1776213417-gda63d9"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1776213417-gda63d9/amp-darwin-arm64"
      sha256 "e5d296a07cf2263d82aacff0eccf732a9765cd0be39ee8c8e227033da1d71d6e"
    else
      url "https://static.ampcode.com/cli/0.0.1776213417-gda63d9/amp-darwin-x64"
      sha256 "1251c68f44eb5fce9419e95bb717328419667360182067502362834bfba2af3d"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1776213417-gda63d9/amp-linux-arm64"
      sha256 "cba2f1ce794a5286064ec18131be1c76c82b006c95b629c2a87bed756e93ba96"
    else
      url "https://static.ampcode.com/cli/0.0.1776213417-gda63d9/amp-linux-x64"
      sha256 "19af9a2515fca745dff8cc57d09b654c9fc581af5d09c39c7fcd58ee01319fef"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
