class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1784737676-g14bd73"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1784737676-g14bd73/amp-darwin-arm64"
      sha256 "607717681c443405290b29bc7a16dce989292e187a82307feee0632d1037acc1"
    else
      url "https://static.ampcode.com/cli/0.0.1784737676-g14bd73/amp-darwin-x64"
      sha256 "49819fc92b21518d60190074bec012a1d6d7f708fd59e144ad82af9735d8ec5e"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1784737676-g14bd73/amp-linux-arm64"
      sha256 "81d0513da79063e03acbce362246f99fb5ff827b35112eab0dc25e6ab3cb8589"
    else
      url "https://static.ampcode.com/cli/0.0.1784737676-g14bd73/amp-linux-x64"
      sha256 "eb45ee06ee367e31e6d1a0afd055c65543e81503f0c6871c12e5f55a7e5735b8"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
