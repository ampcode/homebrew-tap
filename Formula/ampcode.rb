class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1793520029-gd7d531"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1793520029-gd7d531/amp-darwin-arm64"
      sha256 "2123e6e5319f1d73434fe89dc4761db92852ee404c84fcc8a6545d50ea3db1ec"
    else
      url "https://static.ampcode.com/cli/0.0.1793520029-gd7d531/amp-darwin-x64"
      sha256 "7dd111cc37f5b1128f7f490f3fe23d537dcc4c5710104ea60ce0ae4e5438582d"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1793520029-gd7d531/amp-linux-arm64"
      sha256 "b3ad31deb9f856f2afbc11bbe9c3257a17e498487680c05ec82bf7df1e38413e"
    else
      url "https://static.ampcode.com/cli/0.0.1793520029-gd7d531/amp-linux-x64"
      sha256 "ed7d5caf91575f600650e09a1831d379398d57e907297ec16b56c01139ef2107"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
