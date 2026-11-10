class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1794308901-gd9882c"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1794308901-gd9882c/amp-darwin-arm64"
      sha256 "5525ef91b1efca7550a63e159732f88219f1855791c4368a06654c7f6b70a166"
    else
      url "https://static.ampcode.com/cli/0.0.1794308901-gd9882c/amp-darwin-x64"
      sha256 "51f46f5ddceb3f4b66a9712164754cd950825416e4465add04b10dbfa9045098"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1794308901-gd9882c/amp-linux-arm64"
      sha256 "151e67554f4946c7574f373e97d1de81e634c7cb57e7f2daa04fecfc553f8760"
    else
      url "https://static.ampcode.com/cli/0.0.1794308901-gd9882c/amp-linux-x64"
      sha256 "315876a0bd34fa21288f47a53b0219677c471d81e159806090f2a8fd4ef1ba19"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
