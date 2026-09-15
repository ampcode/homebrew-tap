class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1789432613-gd97f0d"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1789432613-gd97f0d/amp-darwin-arm64"
      sha256 "9bb2cc9a5d23ec51bfe814b232b0960944c5a20fdc9705f94f0a7a485797dc04"
    else
      url "https://static.ampcode.com/cli/0.0.1789432613-gd97f0d/amp-darwin-x64"
      sha256 "0d0fb98fb64ee3ab209dd3b83bdfc6a3ca5f3acaf5fc1bc558426c3c8709c920"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1789432613-gd97f0d/amp-linux-arm64"
      sha256 "b50b9c3246e50e025163b65f34e4ea62d2467f0216ca4f5a7d556db8bae6625c"
    else
      url "https://static.ampcode.com/cli/0.0.1789432613-gd97f0d/amp-linux-x64"
      sha256 "39b616fa63f5dd507dfd471a4a3b39fee8eba1daec2dc6678963be1b5f25590f"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
