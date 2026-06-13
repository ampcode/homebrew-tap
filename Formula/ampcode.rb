class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1781315936-g2b1716"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1781315936-g2b1716/amp-darwin-arm64"
      sha256 "9e76827f9671c7879bcc11c9e5c00b940babe1598c96fbceb755b101baafe529"
    else
      url "https://static.ampcode.com/cli/0.0.1781315936-g2b1716/amp-darwin-x64"
      sha256 "5eeae1927113a16031bf3914aed37979142d7ff62279ce868a73515511d8f2e5"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1781315936-g2b1716/amp-linux-arm64"
      sha256 "4a0b12be287b02ef2bb8434c9f88bf90dc8d036c1932d46a51c8dc980421a345"
    else
      url "https://static.ampcode.com/cli/0.0.1781315936-g2b1716/amp-linux-x64"
      sha256 "4219da21f4079633f50a84a1a5d5943299da61e35086b05804e06615e6009f5b"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
