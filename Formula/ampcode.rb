class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1790900127-gdc609b"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1790900127-gdc609b/amp-darwin-arm64"
      sha256 "e733545e577d1c32dfafc703e0f50b832a4609d77aef1a62f948ffdbb4350c2e"
    else
      url "https://static.ampcode.com/cli/0.0.1790900127-gdc609b/amp-darwin-x64"
      sha256 "91771fdd1ba00f5f34a14938bd914bb4b2e08ae519a35abb2f3724f04445fcae"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1790900127-gdc609b/amp-linux-arm64"
      sha256 "0823db9632ce14fd5b5f5d6b22df43bcc88be96d6f364e1c5cc8599428e425c6"
    else
      url "https://static.ampcode.com/cli/0.0.1790900127-gdc609b/amp-linux-x64"
      sha256 "0c6bbe7c14a6f44fe978f02ed0c9398b793df63b73834f92f59b5c13b18e8858"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
