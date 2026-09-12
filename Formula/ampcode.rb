class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1789243243-g7083db"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1789243243-g7083db/amp-darwin-arm64"
      sha256 "3664892b59590ee7a669be31c446033fb70d3f9277d361f4f3b7876ea98b7851"
    else
      url "https://static.ampcode.com/cli/0.0.1789243243-g7083db/amp-darwin-x64"
      sha256 "34447bde93641f6667755ffa4aa57785192ceb887735ab19cdf73733e46fe149"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1789243243-g7083db/amp-linux-arm64"
      sha256 "ed4019f6d51139b8de2b9549a770a1fc1f552381492448c63c34e7f80d579f03"
    else
      url "https://static.ampcode.com/cli/0.0.1789243243-g7083db/amp-linux-x64"
      sha256 "dab30c4a27fba017c60f416f068ea8d8466e9c9c6b4fb8ed9524fed1cfa05433"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
