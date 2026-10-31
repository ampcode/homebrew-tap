class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1793404845-g2958dd"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1793404845-g2958dd/amp-darwin-arm64"
      sha256 "a30e4f83ef6ac2417beba78228b6158e131dac19dc18c16475ebda0446b6b940"
    else
      url "https://static.ampcode.com/cli/0.0.1793404845-g2958dd/amp-darwin-x64"
      sha256 "396ad99a8385487f56b5cab2434aa6a1669f3e2fdf0c119ed8c3d0f01c16bdee"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1793404845-g2958dd/amp-linux-arm64"
      sha256 "79ff9d67b923748d4dba2913e9a16cf55449d36e4b39dca89c1aecb771c70172"
    else
      url "https://static.ampcode.com/cli/0.0.1793404845-g2958dd/amp-linux-x64"
      sha256 "6ab94448760d3b5b93089508f4f883508d98b193e3dc63ea99b559f02563057c"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
