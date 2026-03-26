class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1774500280-gae8248"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1774500280-gae8248/amp-darwin-arm64"
      sha256 "750851077ba9e35e1badb0005c4669886519eaadeb8c535b0642f690a850d934"
    else
      url "https://static.ampcode.com/cli/0.0.1774500280-gae8248/amp-darwin-x64"
      sha256 "5fe6c6d04361276eb312aee47bc7c408d49ce02f66a14322d1ef1b020379008f"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1774500280-gae8248/amp-linux-arm64"
      sha256 "7ba9f6cf798f02daf6b94fbea41cd6d9f45d5afb6b4c477b1c73547ff7ad5a81"
    else
      url "https://static.ampcode.com/cli/0.0.1774500280-gae8248/amp-linux-x64"
      sha256 "2b66dff4a2150500b39148e24f7a0317314dcc59335817e8ae9562b11d2dbbd4"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
