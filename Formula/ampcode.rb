class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1794772833-g217332"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1794772833-g217332/amp-darwin-arm64"
      sha256 "b0b539f3ebc7ce98022dc302f5be0175b117f351cc13287283e4e2485a52167f"
    else
      url "https://static.ampcode.com/cli/0.0.1794772833-g217332/amp-darwin-x64"
      sha256 "2c669484d25ed4f0c87ba170f9d8b802cb9769e2f75f4f71191629bd6880e4ea"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1794772833-g217332/amp-linux-arm64"
      sha256 "9cf027d81c2e45da0f6cb394a6318fb54ca981f12a61c7e6525987ef2cc31a82"
    else
      url "https://static.ampcode.com/cli/0.0.1794772833-g217332/amp-linux-x64"
      sha256 "91e36c3ded364c01a010b6415498921036a108e3b49f38d99b11f97cc902b697"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
