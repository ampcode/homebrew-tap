class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1788254974-g632c81"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1788254974-g632c81/amp-darwin-arm64"
      sha256 "dfc214e1e03903b15d40b3887ca6778232c1caeaa7f890c5da97f4e337974537"
    else
      url "https://static.ampcode.com/cli/0.0.1788254974-g632c81/amp-darwin-x64"
      sha256 "ee91404943db298796678d96a14730690c587d8a58b22f67625dd117c82aca14"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1788254974-g632c81/amp-linux-arm64"
      sha256 "041da1bd7e400e176a50d5f5ca7f0a6e8269461373d2310aef8a8a50d611813a"
    else
      url "https://static.ampcode.com/cli/0.0.1788254974-g632c81/amp-linux-x64"
      sha256 "024807118dce97695a52a1a6503c0cb1b8a733a94064c67ea3f9d86219f2798f"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
