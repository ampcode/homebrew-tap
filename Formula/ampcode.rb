class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1795838433-g2f354f"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1795838433-g2f354f/amp-darwin-arm64"
      sha256 "b752a8bcc1bbc28992e3f9f2252ec51cc95ba9853916dadec94436e39341f0bf"
    else
      url "https://static.ampcode.com/cli/0.0.1795838433-g2f354f/amp-darwin-x64"
      sha256 "ef240b16346967c61ea90ab7bd76ca13acb8fc3fc9f5d1cc51df8289925e2c7d"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1795838433-g2f354f/amp-linux-arm64"
      sha256 "a23d65f286db8ff4b59d96d9fed880a174c617c9e7433dff6eadc3ce0daee5bc"
    else
      url "https://static.ampcode.com/cli/0.0.1795838433-g2f354f/amp-linux-x64"
      sha256 "34f14df31bb910c5086ddb839b88d8aa50c9daf8cd9eb33db7e17783c5570f0d"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
