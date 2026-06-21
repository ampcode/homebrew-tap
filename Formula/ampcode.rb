class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1782029906-gb046d7"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1782029906-gb046d7/amp-darwin-arm64"
      sha256 "030e86476acf165c2e2332bdc73d65919f00611d10d5952b69b8f8d3fe87f1c7"
    else
      url "https://static.ampcode.com/cli/0.0.1782029906-gb046d7/amp-darwin-x64"
      sha256 "f38453f492eadc0ba24d788e51720ef98f024a4a44af15a2818c4de79ec67ca5"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1782029906-gb046d7/amp-linux-arm64"
      sha256 "15a46f98afc043c97fee9a229ccde916fa43365309233de75d9d3083854fbce5"
    else
      url "https://static.ampcode.com/cli/0.0.1782029906-gb046d7/amp-linux-x64"
      sha256 "ac38c39e63a6eac2920faf0ebcf4a4e91983b078573fa539e83af65e2e28fbff"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
