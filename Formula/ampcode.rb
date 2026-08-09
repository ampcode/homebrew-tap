class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1786305972-ge46792"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1786305972-ge46792/amp-darwin-arm64"
      sha256 "9bb15017317f89d403213a23acc42ae2531eecc44c97a5cc65cea758f5381400"
    else
      url "https://static.ampcode.com/cli/0.0.1786305972-ge46792/amp-darwin-x64"
      sha256 "d4b3089bd07afd3a909c76c21ef42221405886e411d6465bd5a6005a89f64063"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1786305972-ge46792/amp-linux-arm64"
      sha256 "5d33a8f8ace5ec645dfe3e0b40981f31c95e360ed6fd483fb8de9935b4df9509"
    else
      url "https://static.ampcode.com/cli/0.0.1786305972-ge46792/amp-linux-x64"
      sha256 "e7918787dc940df51e8ad4727f80d569889b1c1f719177a705fbfa100e4f706c"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
