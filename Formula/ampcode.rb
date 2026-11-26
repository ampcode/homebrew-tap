class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1795694448-gb5c43a"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1795694448-gb5c43a/amp-darwin-arm64"
      sha256 "e1df5e073584c1c622faa8490c8a8b62f3daccb4b74bfbe8f82c6df986353a48"
    else
      url "https://static.ampcode.com/cli/0.0.1795694448-gb5c43a/amp-darwin-x64"
      sha256 "4669a102c568a0b6ef1d52953de91f5b32583af98d7b82c71aae39dacd431af4"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1795694448-gb5c43a/amp-linux-arm64"
      sha256 "68c5451371376ad45dc6d1b69cd708fa1042f178773bbfbf40639bd9ee3035cd"
    else
      url "https://static.ampcode.com/cli/0.0.1795694448-gb5c43a/amp-linux-x64"
      sha256 "b1400192c8d2067cb2d0dce329d643d371038fd819ca27018efb047992ef2277"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
