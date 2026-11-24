class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1795478457-g9601b2"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1795478457-g9601b2/amp-darwin-arm64"
      sha256 "3014bb8250d02c580692947386f885c797c2633c1221b9e223e9ceae5eb0b27e"
    else
      url "https://static.ampcode.com/cli/0.0.1795478457-g9601b2/amp-darwin-x64"
      sha256 "8fd2fb42864239876d296ad0a2ec678213b7edc590a5559be16630c9535032cd"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1795478457-g9601b2/amp-linux-arm64"
      sha256 "07a5b34b29a4c57351b0e86599ce24dff6639bbf45c05133f72986adacc64079"
    else
      url "https://static.ampcode.com/cli/0.0.1795478457-g9601b2/amp-linux-x64"
      sha256 "4aeee7924d7625661dce5d95b0c0f96d0a4be58eae8f3c45fa0f2e2e4d574f39"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
