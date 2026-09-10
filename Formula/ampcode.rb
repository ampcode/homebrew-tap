class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1789060657-gbbbea4"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1789060657-gbbbea4/amp-darwin-arm64"
      sha256 "fba7fdd05754d8c72092fae27d69914030c5b74133b73e200724ede5628e4650"
    else
      url "https://static.ampcode.com/cli/0.0.1789060657-gbbbea4/amp-darwin-x64"
      sha256 "51935169b1248b36325c9e50c0478616f6a4377ea57377589536bb30a6cfa18e"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1789060657-gbbbea4/amp-linux-arm64"
      sha256 "45e1083dfa9cd06333fcecb4ba658ae42f276788f97bfacaadd8df242dff170d"
    else
      url "https://static.ampcode.com/cli/0.0.1789060657-gbbbea4/amp-linux-x64"
      sha256 "54f93b82df7ff357c3ca0331294c88f696c226ebdd78bae60b7a5ea353e9bd2a"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
