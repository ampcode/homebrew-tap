class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1787342526-gc11bfb"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1787342526-gc11bfb/amp-darwin-arm64"
      sha256 "7f7b549c6dfec329e7635631d305cd8a7c619886c1cf1a9195f7a4f4745b3c0a"
    else
      url "https://static.ampcode.com/cli/0.0.1787342526-gc11bfb/amp-darwin-x64"
      sha256 "1414902c07bd0b2de7b25c4f3864f28889817393aa4af4676ab8868331d86d7a"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1787342526-gc11bfb/amp-linux-arm64"
      sha256 "ed3db93348b773c5f289c621a016ef6c4cafb4fd52bcd5fc94b73d48a3d11b88"
    else
      url "https://static.ampcode.com/cli/0.0.1787342526-gc11bfb/amp-linux-x64"
      sha256 "2348bc5b85f173c76c3563fb1556542defddd53abdc0ee6d8c3c5166221ef10e"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
