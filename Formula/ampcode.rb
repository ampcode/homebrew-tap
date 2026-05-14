class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1778790766-g60d194"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1778790766-g60d194/amp-darwin-arm64"
      sha256 "65c2ffd1b9dbfaf03200a8796d4412f4da7697a58b184e43764c6d849721716b"
    else
      url "https://static.ampcode.com/cli/0.0.1778790766-g60d194/amp-darwin-x64"
      sha256 "456cceb592816e052f2d6e34457a3c82da01204e04beb7927076e90b4079711c"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1778790766-g60d194/amp-linux-arm64"
      sha256 "0a516478754f8f98d385ceb1ca9f1b394944945a659c951230506828985f36ec"
    else
      url "https://static.ampcode.com/cli/0.0.1778790766-g60d194/amp-linux-x64"
      sha256 "6dc094191995e7055f31f221378927e1baaae9807f0504048ddb1c63fb5d5fea"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
