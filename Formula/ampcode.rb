class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1777248626-ga45149"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1777248626-ga45149/amp-darwin-arm64"
      sha256 "c5818492018b15cb5a9ecf059783574520003d9762e41a02763e5ccf6b6de8ec"
    else
      url "https://static.ampcode.com/cli/0.0.1777248626-ga45149/amp-darwin-x64"
      sha256 "e340f4fa550389623351799925f4883a40206957b09c1eca80c41abd0b35fd22"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1777248626-ga45149/amp-linux-arm64"
      sha256 "ff4f30b0f4e70fdf431bb5292ee0005d3c8d62e75dc0df17027b54cebc931193"
    else
      url "https://static.ampcode.com/cli/0.0.1777248626-ga45149/amp-linux-x64"
      sha256 "59d25d8ae9dcdba64d5712679d37fca7e42407be775cdb5d56c032505691fd36"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
