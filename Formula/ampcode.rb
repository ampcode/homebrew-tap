class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1781305812-g78bbf9"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1781305812-g78bbf9/amp-darwin-arm64"
      sha256 "fa9625995f7c65cefbdb5b1f5b0f4bcb28191bbb9d7f49777aee9e833fc6021f"
    else
      url "https://static.ampcode.com/cli/0.0.1781305812-g78bbf9/amp-darwin-x64"
      sha256 "1f5fa74385e27b32a133695d0d96cab045f7f7b5ca18af75142271d306b17ae6"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1781305812-g78bbf9/amp-linux-arm64"
      sha256 "fdebdae6378a1e49e090978e918980c23524180e3a8c6491b2aedb5020d08234"
    else
      url "https://static.ampcode.com/cli/0.0.1781305812-g78bbf9/amp-linux-x64"
      sha256 "d9f872c092c1a7d84ac1cbae52a309d6cefc230a21f6cc153dba647d243b2800"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
