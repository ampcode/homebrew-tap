class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1777627509-gb1b4ca"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1777627509-gb1b4ca/amp-darwin-arm64"
      sha256 "1c81533c3262a76d35c2df88cee5b81eb602806acef02d05c0967557a8d5c98c"
    else
      url "https://static.ampcode.com/cli/0.0.1777627509-gb1b4ca/amp-darwin-x64"
      sha256 "02c8d48bb856caf25302307020f7a79e925fcf305306961fac48041d79817632"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1777627509-gb1b4ca/amp-linux-arm64"
      sha256 "73f64a07311bed51972133b9d76ad331d757049326742f0faa834fbc02fc46b4"
    else
      url "https://static.ampcode.com/cli/0.0.1777627509-gb1b4ca/amp-linux-x64"
      sha256 "5032114b10845bf365995e4390bf7d4674e1076c38a69a87d9acd1cfa180f922"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
