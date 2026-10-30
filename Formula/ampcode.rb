class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1793318446-g3ee5e2"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1793318446-g3ee5e2/amp-darwin-arm64"
      sha256 "9d0c9637d32788fccb1b5bb556102333ca7462cbadcac53a4aca76b980eba6b1"
    else
      url "https://static.ampcode.com/cli/0.0.1793318446-g3ee5e2/amp-darwin-x64"
      sha256 "045487eba09e0ff9510c87606c7d0da5fcf21f212196624d54b31e0859f543a7"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1793318446-g3ee5e2/amp-linux-arm64"
      sha256 "278853db5f3ed0a57b7f6e29f37235df39185f71125979370999fd4d6f2944cd"
    else
      url "https://static.ampcode.com/cli/0.0.1793318446-g3ee5e2/amp-linux-x64"
      sha256 "7eb69a3da987e7295f95ec316ffc2e9c68e22d7312f0134e33ba529ed60439bd"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
