class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1783469913-gec6259"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1783469913-gec6259/amp-darwin-arm64"
      sha256 "5a6185a0db0c8ec88b96acaaa39ebdf9a14a85a330a27e37aa998e844d90b3a0"
    else
      url "https://static.ampcode.com/cli/0.0.1783469913-gec6259/amp-darwin-x64"
      sha256 "648b2f4f4ac4f527f8dbae83ba860798e1f6ea5a106014a657126bdfde06cb12"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1783469913-gec6259/amp-linux-arm64"
      sha256 "9e4f54d5e8de359179f094a0b0058af96dd6ed4d0bd777a851a1e9a00c0138f1"
    else
      url "https://static.ampcode.com/cli/0.0.1783469913-gec6259/amp-linux-x64"
      sha256 "4e3538058f563ffc07e1403dd30de90cd154676d70a6e2a141af2bb928b062cc"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
