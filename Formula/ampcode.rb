class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1793145649-gaedc46"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1793145649-gaedc46/amp-darwin-arm64"
      sha256 "c258fd542cd5bd06fc05ff5ef86058c255759a3538cf53cf067d44b040d1bfbd"
    else
      url "https://static.ampcode.com/cli/0.0.1793145649-gaedc46/amp-darwin-x64"
      sha256 "9fc284dba630e69970904fb3b61f21b4bd097dad37b28195cfdd001b8ffc5bfd"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1793145649-gaedc46/amp-linux-arm64"
      sha256 "214b38811571a013726ad4a395b0940d26ec44cd57051058801bda32ec104bed"
    else
      url "https://static.ampcode.com/cli/0.0.1793145649-gaedc46/amp-linux-x64"
      sha256 "4ce5be64163241f251204ae332dfe06873517b14587aa019a7a517b8648dc4cd"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
