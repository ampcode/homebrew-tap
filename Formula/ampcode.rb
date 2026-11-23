class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1795435239-g464604"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1795435239-g464604/amp-darwin-arm64"
      sha256 "01989578a616bdd36cc906de6729288ff89c8327e4227ddda7816a326ba9fcdb"
    else
      url "https://static.ampcode.com/cli/0.0.1795435239-g464604/amp-darwin-x64"
      sha256 "c5d923b44e7c04e42c4f2f333d03c490164eabdbbd0b35464d73fe395765f898"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1795435239-g464604/amp-linux-arm64"
      sha256 "693e1001b663b2fde9f5fab8bc52c62f1800a957eb3e371a0caaf039214a0b24"
    else
      url "https://static.ampcode.com/cli/0.0.1795435239-g464604/amp-linux-x64"
      sha256 "ee3537288ccae94b3e985fb1c8bd8ce39659404987c254b1a1b27759d2b8dcc4"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
