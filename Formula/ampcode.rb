class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1774459691-g285216"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1774459691-g285216/amp-darwin-arm64"
      sha256 "f8cb0d91bc43a085056c9066f498fc71be8b138890b4623b83bf7a5e17b722fc"
    else
      url "https://static.ampcode.com/cli/0.0.1774459691-g285216/amp-darwin-x64"
      sha256 "69111e2068949e9502821b1715e516f492f4edee0612c1ac1a29ea010a626496"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1774459691-g285216/amp-linux-arm64"
      sha256 "735b029833c819c189626bd693ab238d852a8d1bfe5c1b3bfc4bece6e9187373"
    else
      url "https://static.ampcode.com/cli/0.0.1774459691-g285216/amp-linux-x64"
      sha256 "243ed4989a43040ddce4365000ea147500cd334889ca9215011618821b9a5b4c"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
