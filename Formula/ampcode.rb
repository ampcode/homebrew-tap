class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1779481807-ge7719a"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1779481807-ge7719a/amp-darwin-arm64"
      sha256 "db314cbc7533fc07e06906900e9ec18dca096bb136adab22720bcab155c7235f"
    else
      url "https://static.ampcode.com/cli/0.0.1779481807-ge7719a/amp-darwin-x64"
      sha256 "3e871d013cef07caa03ff56951b471c24f6f2d634ee7b7814889e5a79b6e77b5"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1779481807-ge7719a/amp-linux-arm64"
      sha256 "edb491d5f343f14ad09dd68899b883d509a45067dd1eb9460d1a955106589fe0"
    else
      url "https://static.ampcode.com/cli/0.0.1779481807-ge7719a/amp-linux-x64"
      sha256 "de9616bce72bb9bdf659cca08020137abd6f9bda3a9dddb6b8c4e9099e4e911d"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
