class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1777376263-g7936be"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1777376263-g7936be/amp-darwin-arm64"
      sha256 "b91bfc50f1205d08ac95562d439c2f0ba4d9d7db32740361e100fc87f7317bc1"
    else
      url "https://static.ampcode.com/cli/0.0.1777376263-g7936be/amp-darwin-x64"
      sha256 "333075b6a48f7fb331a274ef515395d07d6143add41b4fe0656b04ddf6624880"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1777376263-g7936be/amp-linux-arm64"
      sha256 "56c49528b3e408f27f55f0551f63a2e58c310cde4336225e0f12dc7106d3797a"
    else
      url "https://static.ampcode.com/cli/0.0.1777376263-g7936be/amp-linux-x64"
      sha256 "b6972ce66f57006a55a26b8fdb887bc02f661246c326f9ffff1ee3c2595b1d5c"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
