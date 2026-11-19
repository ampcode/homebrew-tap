class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1795104033-gfa5ada"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1795104033-gfa5ada/amp-darwin-arm64"
      sha256 "52350ae57bcf309a9b472f64a83e156d8a604fe8f3b28fc5d14ceea97ad21382"
    else
      url "https://static.ampcode.com/cli/0.0.1795104033-gfa5ada/amp-darwin-x64"
      sha256 "55e6de9138942c6b96548695cdca022ca768c5301ddb4bdd78f47ca8f97ec795"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1795104033-gfa5ada/amp-linux-arm64"
      sha256 "8062071304ad470f2d1ef9916700e913e687a7113b25fcf3ef558c7e749ec3c2"
    else
      url "https://static.ampcode.com/cli/0.0.1795104033-gfa5ada/amp-linux-x64"
      sha256 "9d6f87cf7357abf582a19dc8134999514a4f4451bf6f8a9bb029ed3e3ed7ad0e"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
