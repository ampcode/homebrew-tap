class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1777032821-gb2df60"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1777032821-gb2df60/amp-darwin-arm64"
      sha256 "b221804210d36db7facfae128109abbd91e6361cd59191a03a438744447fc910"
    else
      url "https://static.ampcode.com/cli/0.0.1777032821-gb2df60/amp-darwin-x64"
      sha256 "82cc629a08472939e2d87805e58dc656ebfa769439397d5d096781b85ca46e39"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1777032821-gb2df60/amp-linux-arm64"
      sha256 "41cc0bf980dd085dbfc3242a54b595065343559200538bad2026f0014a197acb"
    else
      url "https://static.ampcode.com/cli/0.0.1777032821-gb2df60/amp-linux-x64"
      sha256 "eef934af001f8992c77b6d3ceef6686c5d9da9c7fd55d5580f35888bad46b4a8"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
