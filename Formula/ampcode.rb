class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1775232488-gb32f0f"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1775232488-gb32f0f/amp-darwin-arm64"
      sha256 "3eb5afdb3ac36f51c7a4920307eafe0087cb7815cadc84591d6788d9e80f7986"
    else
      url "https://static.ampcode.com/cli/0.0.1775232488-gb32f0f/amp-darwin-x64"
      sha256 "abd50d2b6c342ae3a329dc619892dd4389393ec766377477383e2e3ec6331b2e"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1775232488-gb32f0f/amp-linux-arm64"
      sha256 "bd086292ecc799faa0fc06bcba33602eea105b05060f45f07c3a1fc96e5eda9b"
    else
      url "https://static.ampcode.com/cli/0.0.1775232488-gb32f0f/amp-linux-x64"
      sha256 "35b863c13951376dd5fbcc57583918c4ef621ff67bf3761db22a4a9f43526af0"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
