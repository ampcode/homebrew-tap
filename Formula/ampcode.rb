class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1776781242-gc60e47"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1776781242-gc60e47/amp-darwin-arm64"
      sha256 "6f8bed0e76e3468cb618a0ead390a2f2ae67d68fd25072aeecddcb6d2b5e80aa"
    else
      url "https://static.ampcode.com/cli/0.0.1776781242-gc60e47/amp-darwin-x64"
      sha256 "eacc08e60198d9947775d549e6d9679052769a773b23909f287384f9bc976216"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1776781242-gc60e47/amp-linux-arm64"
      sha256 "3b6432e0070cbd1b64fff799e2bb030cfe76f58b3be3acfcad6d651ad70f5941"
    else
      url "https://static.ampcode.com/cli/0.0.1776781242-gc60e47/amp-linux-x64"
      sha256 "5253abe89d68029038ab9cbfbd2c8d0b0118386809130d4e56a658049e1d2a55"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
