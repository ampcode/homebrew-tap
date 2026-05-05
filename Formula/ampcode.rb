class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1777979451-gaec852"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1777979451-gaec852/amp-darwin-arm64"
      sha256 "1d89e8bce520b24dbae8583576b898743337aa5c14e6ed1a1594c578b85359bc"
    else
      url "https://static.ampcode.com/cli/0.0.1777979451-gaec852/amp-darwin-x64"
      sha256 "750eef1815f0020f686eab6910da327bd93fe926ccdc574e4a7df0079c12b6c3"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1777979451-gaec852/amp-linux-arm64"
      sha256 "a5efb5633f1ce503fc04a4f061e8b69af970ad65b4031c561b4a7ac83b1c0a83"
    else
      url "https://static.ampcode.com/cli/0.0.1777979451-gaec852/amp-linux-x64"
      sha256 "9c918b2782e59218f0608d780710c7c3eae501bd65ba95451d18e8aeb7f15af1"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
