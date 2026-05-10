class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1778443915-g13ad60"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1778443915-g13ad60/amp-darwin-arm64"
      sha256 "838861a046c7e721f5440718294bbb46fa3e3c1e09cb207590fdc5800cc094ba"
    else
      url "https://static.ampcode.com/cli/0.0.1778443915-g13ad60/amp-darwin-x64"
      sha256 "143a56e01e675492ee2059c10a1e191defda3fbac995c24228ea2a6dc182139b"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1778443915-g13ad60/amp-linux-arm64"
      sha256 "26b1123ebc433a80d68b6be54f3fab7f38824b430b3bebfd6bdff9f7043d21dd"
    else
      url "https://static.ampcode.com/cli/0.0.1778443915-g13ad60/amp-linux-x64"
      sha256 "4b63150c7ee931b7451789e4dfff82c676ccd2319876bb386ec9304c7a3795c6"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
