class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1792008042-gef0030"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1792008042-gef0030/amp-darwin-arm64"
      sha256 "a64d608c8acecbb0ee30a6e4d90f2ec171930176cd4e1a7fc035bc21c0111293"
    else
      url "https://static.ampcode.com/cli/0.0.1792008042-gef0030/amp-darwin-x64"
      sha256 "17a63b859037161e09b17c3fd7477e230f8a3eb3be803934e73f09b00bb1159a"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1792008042-gef0030/amp-linux-arm64"
      sha256 "c59784ecedc587544f2a16676c0e039c7cbcc6b1ded8451c2208dd390a2ba94f"
    else
      url "https://static.ampcode.com/cli/0.0.1792008042-gef0030/amp-linux-x64"
      sha256 "2111e4d3596fab97b95561c20d232953417620ceb131fd30fdacf2b243bdabfb"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
