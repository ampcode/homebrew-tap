class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1795118441-g890419"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1795118441-g890419/amp-darwin-arm64"
      sha256 "fe2e93e97ea3f2e1d002bee3f94872aa17de9e3cc00826a530317f70e16de38e"
    else
      url "https://static.ampcode.com/cli/0.0.1795118441-g890419/amp-darwin-x64"
      sha256 "d0be952ba300894eee984fbfd3873d64cef08c88c7ee867541f5b22cb25580c6"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1795118441-g890419/amp-linux-arm64"
      sha256 "302205e1409eacb38376f924e7b1c4f1a0081644ebdb6d98d6d43a4cc0041fc4"
    else
      url "https://static.ampcode.com/cli/0.0.1795118441-g890419/amp-linux-x64"
      sha256 "479a353d1c6064028b4c5d42c74890c7ece3ae2a2115d8052e684ec544b7b7d7"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
