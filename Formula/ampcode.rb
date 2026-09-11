class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1789142434-g4f3b4d"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1789142434-g4f3b4d/amp-darwin-arm64"
      sha256 "cef6ed184c53ca607b987a7b40600734ef7be6a99a3061733ce8adec2a1680fd"
    else
      url "https://static.ampcode.com/cli/0.0.1789142434-g4f3b4d/amp-darwin-x64"
      sha256 "583849eeacfd4c3f85042d1b59483fba8354fc1ace5c0d286597e4d6a03813a6"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1789142434-g4f3b4d/amp-linux-arm64"
      sha256 "d0c27f45d51224fe82746c13212baae0cfe745913a46e16a9a9e016156b801fa"
    else
      url "https://static.ampcode.com/cli/0.0.1789142434-g4f3b4d/amp-linux-x64"
      sha256 "9fe49512d731090db8d57d5b84bf883d28f2a895ee2b51874a7c42bd5c2617bd"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
