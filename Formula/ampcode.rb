class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1792224035-gabd4f6"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1792224035-gabd4f6/amp-darwin-arm64"
      sha256 "932f1f97aaeafe0425a6cbe2f6150f21ce1444879a9a99bb18983c13e5d8d95a"
    else
      url "https://static.ampcode.com/cli/0.0.1792224035-gabd4f6/amp-darwin-x64"
      sha256 "1b46bb851abf1841cc2baefce76f5a2542a1926f2276792d605d3f2ff93545ca"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1792224035-gabd4f6/amp-linux-arm64"
      sha256 "39fec7ac90a23389e3a1fcd06287d66482e449a4f940c176732af57cfda03546"
    else
      url "https://static.ampcode.com/cli/0.0.1792224035-gabd4f6/amp-linux-x64"
      sha256 "3fef009c4299880de7962afbbf0212e2dc17ecd9cb05630a49f7c0a935bd537f"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
