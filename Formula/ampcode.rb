class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1774728201-ga87440"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1774728201-ga87440/amp-darwin-arm64"
      sha256 "9ba656fd7c1cf5f4d67cf2669da91f96d4557fe3dd27452553590e6728fd1b4d"
    else
      url "https://static.ampcode.com/cli/0.0.1774728201-ga87440/amp-darwin-x64"
      sha256 "9bb943a60edd657f7580a9f80fb9d39852a49c3c8e7004d0830ddabe3db68a47"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1774728201-ga87440/amp-linux-arm64"
      sha256 "a113b6fb35660c894384094f46e8da5f13a24bb0c741b16db6e15f2413830a5e"
    else
      url "https://static.ampcode.com/cli/0.0.1774728201-ga87440/amp-linux-x64"
      sha256 "e8c0acb45142e1962c4f439049a443fbcce1f53e4d301ec5680dec2d8f882716"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
