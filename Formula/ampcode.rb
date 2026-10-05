class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1791187719-g319a37"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1791187719-g319a37/amp-darwin-arm64"
      sha256 "53e2c414ee923ca74fcc9c8e1233263ff5931deeddf6e161ddc095d9f61937b4"
    else
      url "https://static.ampcode.com/cli/0.0.1791187719-g319a37/amp-darwin-x64"
      sha256 "52902654f1c09071cfd600996eda734a5878f5ba92d563ce2a0b617578aef297"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1791187719-g319a37/amp-linux-arm64"
      sha256 "89096b1954a6bdf529777113758523ee66e6800d1e76069a377070b8c192cfed"
    else
      url "https://static.ampcode.com/cli/0.0.1791187719-g319a37/amp-linux-x64"
      sha256 "12ca74706ebe1f07ed919e885e01e20d589ad08d5ace7e0e69af975a98440bed"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
